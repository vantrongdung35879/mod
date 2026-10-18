.class public Lcom/ihoc/mgpa/gradish/M0;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/gradish/M0$y;,
        Lcom/ihoc/mgpa/gradish/M0$x;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/a1;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/M0;->a:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->q()V

    return-void
.end method

.method static synthetic b(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->d()V

    return-void
.end method

.method private b()Z
    .locals 2

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->A:Lcom/ihoc/mgpa/gradish/x;

    if-nez v0, :cond_1

    return v1

    .line 11
    :cond_1
    iget v0, v0, Lcom/ihoc/mgpa/gradish/x;->a:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic c(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->m()V

    return-void
.end method

.method private c()Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->A:Lcom/ihoc/mgpa/gradish/x;

    if-nez v0, :cond_1

    return v1

    .line 11
    :cond_1
    iget v0, v0, Lcom/ihoc/mgpa/gradish/x;->b:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private d()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->createOrExistsDir(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v2, "prepare sdk dir success! "

    invoke-static {v0, v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getLogDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->createOrExistsDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    const-string v2, "prepare sdk log dir success! "

    invoke-static {v0, v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 7
    :cond_0
    const-string v2, "prepare sdk log dir failed! "

    invoke-static {v0, v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getPreDownloadDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->createOrExistsDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    const-string v2, "prepare sdk predownload dir success! "

    invoke-static {v0, v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 12
    :cond_1
    const-string v2, "prepare sdk predownload dir failed! "

    invoke-static {v0, v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 15
    :cond_2
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v2, "prepare sdk dir failed! "

    invoke-static {v0, v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->p()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getDefaultDebugLogFile()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v1, v1, Lcom/ihoc/mgpa/gradish/L$b;->b:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->enableLogBySelf(Z)V

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->backupOldDebugLogFile()V

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->createNewDebugLogFile()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->k()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L0;->b()Lcom/ihoc/mgpa/gradish/L0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/L0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->enableLog(Z)V

    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "enable log from config file"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->n()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v2, "context is null when check device info."

    invoke-static {v0, v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v2, "This sdk version is not support for device check function."

    invoke-static {v0, v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic g(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->v()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/l;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5
    new-instance v1, Lcom/ihoc/mgpa/gradish/M0$o;

    invoke-direct {v1, p0}, Lcom/ihoc/mgpa/gradish/M0$o;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->g()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->enableTestModeByLocalFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "found debug file. now open test mode!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setDebugMode(Z)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->l()V

    return-void
.end method

.method private j()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getDefaultDebugLogFile()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->enableLogBySelf(Z)V

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->backupOldDebugLogFile()V

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->createNewDebugLogFile()V

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "found log file. logfile path: %s"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->r()V

    return-void
.end method

.method private k()V
    .locals 4

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isVendorOAIDReportOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string/jumbo v1, "try get device token when first startup, please care!"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/gradish/h0;->b()V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v1, "can\'t get device token when first startup, please care!"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string/jumbo v1, "try get device token when init, please care!"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/ihoc/mgpa/gradish/h0;->b()V

    goto :goto_0

    .line 15
    :cond_2
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v1, "can\'t get device token when init, please care!"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_3
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v1, "get device token failed!, func is not open."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirstStart"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->putCommit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->f()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isPredownloadFileCheckOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/q0;->f()Lcom/ihoc/mgpa/gradish/q0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/q0;->b()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v1, "Perf_init:checkPredownFile: func is not open."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic l(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->j()V

    return-void
.end method

.method private m()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v1, "context is null when check vendor server."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->c()V

    .line 10
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSSPFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G0;->e()Lcom/ihoc/mgpa/gradish/G0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/G0;->g()V

    .line 12
    invoke-static {}, Lcom/ihoc/mgpa/gradish/G0;->e()Lcom/ihoc/mgpa/gradish/G0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/G0;->j()V

    goto :goto_0

    .line 14
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v1, "ssp func is not open."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic m(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->i()V

    return-void
.end method

.method private n()V
    .locals 6

    .line 2
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->l1IdReport:Z

    const/16 v1, 0x40

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->d()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 5
    sget-object v2, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get uid v8 failed!, uid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->l2IdReport:Z

    const-string/jumbo v2, "xid"

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->b()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 11
    sget-object v3, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get xid v8 failed!, xid: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-boolean v3, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->xidUpdate:Z

    if-eqz v3, :cond_3

    .line 14
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->getInstance()Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v3, "get xid v8 failed!, func is not open."

    invoke-static {v0, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_3
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isUniqueIdReportOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->d()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v1, :cond_5

    .line 24
    sget-object v3, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get uid failed!, uid: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_4
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v3, "get uid failed!, func is not open."

    invoke-static {v0, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_5
    :goto_1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSafeUniqueIdReportOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->b()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v1, :cond_6

    .line 33
    sget-object v1, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get xid failed!, xid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 35
    :cond_6
    invoke-static {}, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->getInstance()Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/ihoc/mgpa/report/impl/tdm/TDMReport;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 38
    :cond_7
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v1, "get xid failed!, func is not open."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isDebugIdReportOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 42
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugID"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method static synthetic n(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->s()V

    return-void
.end method

.method private o()Lcom/ihoc/mgpa/gradish/C;
    .locals 7

    .line 2
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->h()V

    .line 4
    new-instance v0, Lcom/ihoc/mgpa/gradish/m;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/m;-><init>()V

    .line 6
    sget-object v1, Lcom/ihoc/mgpa/gradish/C;->d:Lcom/ihoc/mgpa/gradish/C;

    .line 9
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/m;->c()Lcom/ihoc/mgpa/gradish/C;

    move-result-object v2

    .line 12
    sget-object v3, Lcom/ihoc/mgpa/gradish/C;->e:Lcom/ihoc/mgpa/gradish/C;

    if-eq v2, v3, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/m;->a()Lcom/ihoc/mgpa/gradish/C;

    move-result-object v1

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/m;->b()Lcom/ihoc/mgpa/gradish/C;

    move-result-object v0

    .line 18
    iget-object v4, p0, Lcom/ihoc/mgpa/gradish/M0;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/C;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "config_cloud_result"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v4, Lcom/ihoc/mgpa/gradish/C;->v:Lcom/ihoc/mgpa/gradish/C;

    if-ne v0, v4, :cond_1

    .line 21
    sget-object v1, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v2, "[fetchCloudConfig]: USE cache cloud config."

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 26
    sget-object v1, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v2, "[fetchCloudConfig]: request cloud config success."

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    if-ne v2, v3, :cond_3

    .line 31
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v1, "[fetchCloudConfig]: get local config success. "

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3
    if-ne v1, v3, :cond_4

    .line 36
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v2, "[fetchCloudConfig]: get assets config success. "

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 41
    :cond_4
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/C;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 42
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/C;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 43
    invoke-virtual {v1}, Lcom/ihoc/mgpa/gradish/C;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x2

    aput-object v1, v4, v2

    .line 44
    const-string v1, "[fetchCloudConfig]: get config fail. netErrorCode: %d; localErrorCode: %d; assetsErrorCode: %d"

    invoke-static {v1, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic o(Lcom/ihoc/mgpa/gradish/M0;)Lcom/ihoc/mgpa/gradish/C;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->o()Lcom/ihoc/mgpa/gradish/C;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcom/ihoc/mgpa/gradish/M0;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ihoc/mgpa/gradish/M0;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method private p()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v1, "context is null when init predownload."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isBgPreDownloadFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->cleanFile()V

    .line 9
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v1, "checkBgPreDownloadNewTask is doing "

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->getInstance()Lcom/ihoc/mgpa/download/BgPreDownloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/download/BgPreDownloadHelper;->initAndFetchTasks()V

    :cond_1
    return-void
.end method

.method private q()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "context is null when init bugly."

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    const-string v2, "BuglySdkInfos"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9
    const-string v1, "7f7b152a32"

    const-string v2, "4.1.0.7"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic q(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->e()V

    return-void
.end method

.method private r()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/P;->a()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/gradish/P;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "haptic_support"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/gradish/P;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "am_support"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P;->b()Lcom/ihoc/mgpa/gradish/P;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ihoc/mgpa/gradish/P;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/t1;->d(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic r(Lcom/ihoc/mgpa/gradish/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->w()V

    return-void
.end method

.method private s()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/l;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    const-string v2, "com.tdatamaster.tdm.TDataMaster"

    invoke-static {v0, v1, v2}, Lcom/ihoc/mgpa/report/Reporter;->init(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/ihoc/mgpa/gradish/t1;->c()V

    return-void
.end method

.method private t()Z
    .locals 2

    .line 1
    const-string v0, "FirstStart"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private u()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    const-string v2, "key"

    sget-object v3, Lcom/ihoc/mgpa/vendor/VendorKey;->INIT_ACTION:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v3}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v2, "ret"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    const-string v2, "DeviceToken"

    invoke-static {}, Lcom/ihoc/mgpa/gradish/h0;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v1

    new-instance v2, Lcom/ihoc/mgpa/gradish/I;

    sget-object v3, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->INIT_ACTION:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/ihoc/mgpa/gradish/I;-><init>(Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ihoc/mgpa/gradish/s1;->a(Lcom/ihoc/mgpa/gradish/I;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private v()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v1, "reportNotchInfo start."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    const-string v1, "context is null when report notch info."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/notch/NotchManager;->getInstance()Lcom/ihoc/mgpa/notch/NotchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/notch/NotchManager;->getNotchInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string v2, "notch"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/t1;->g(Ljava/util/HashMap;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isNotchProbeSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Lcom/ihoc/mgpa/notch/NotchManager;->getInstance()Lcom/ihoc/mgpa/notch/NotchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/notch/NotchManager;->notchProbe(Landroid/content/Context;)V

    .line 15
    invoke-static {}, Lcom/ihoc/mgpa/notch/NotchManager;->getInstance()Lcom/ihoc/mgpa/notch/NotchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/notch/NotchManager;->getNotchInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    const-string v2, "notch_probe"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/t1;->g(Ljava/util/HashMap;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private w()V
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "vmpdebug"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s-1.log"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SdkUtil;->getLogDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L;->b:Lcom/ihoc/mgpa/gradish/L$b;

    iget-boolean v1, v1, Lcom/ihoc/mgpa/gradish/L$b;->c:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_Android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->getFileLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 6
    const-string/jumbo v4, "yyyyMMddHHmmss"

    invoke-static {v2, v3, v4}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getStringTimeByLong(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/ihoc/mgpa/gradish/l;->c()Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/predown/upload"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getOpenId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "openid"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/ihoc/mgpa/gradish/i1;->f()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "xid"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v4, "plat_type"

    const-string v5, "Android"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v4, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;

    new-instance v5, Lcom/ihoc/mgpa/gradish/M0$n;

    invoke-direct {v5, p0}, Lcom/ihoc/mgpa/gradish/M0$n;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    invoke-direct {v4, v5}, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;-><init>(Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil$HttpCallback;)V

    .line 24
    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/ihoc/mgpa/toolkit/util/AsyncHttpUtil;->uploadFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/M0;->b:Ljava/lang/String;

    const-string v1, "do not need to upload log file."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$k;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$k;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_Base"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 18
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 20
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$p;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$p;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_VmpHandler"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 25
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 27
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$q;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$q;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_CloudCheck"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 37
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 39
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$r;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$r;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_SetReportEvent"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 44
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 45
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$s;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$s;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_SubHandler"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 50
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 52
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$t;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$t;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_UploadLog"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 57
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 59
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$u;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$u;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_RegisterObserver"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 65
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 67
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$v;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$v;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_VendorServerCheck"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 72
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 74
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$w;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$w;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_BgPreDownload"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 79
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 88
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$a;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$a;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_BiLink"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 96
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 98
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$b;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$b;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_OAID"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 103
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 105
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$c;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$c;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_XID"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 110
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 112
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$d;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$d;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_Notch"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 117
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 119
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$e;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$e;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_DeviceCheck"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 124
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 126
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$f;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$f;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_PredownFileCheck"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 131
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 133
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$g;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$g;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_Haptic"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 138
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 140
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$h;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$h;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_Transceiver"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 145
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 147
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$i;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$i;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_DataForward"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 152
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 154
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$j;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$j;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_StartRouter"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 159
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 169
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$l;

    invoke-direct {v3, p0}, Lcom/ihoc/mgpa/gradish/M0$l;-><init>(Lcom/ihoc/mgpa/gradish/M0;)V

    const-string v4, "Task_Thermal"

    invoke-direct {v2, p0, v4, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 179
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 181
    new-instance v2, Lcom/ihoc/mgpa/gradish/M0$y;

    new-instance v3, Lcom/ihoc/mgpa/gradish/M0$m;

    invoke-direct {v3, p0, v0, v1}, Lcom/ihoc/mgpa/gradish/M0$m;-><init>(Lcom/ihoc/mgpa/gradish/M0;J)V

    const-string v0, "Task_Report"

    invoke-direct {v2, p0, v0, v3}, Lcom/ihoc/mgpa/gradish/M0$y;-><init>(Lcom/ihoc/mgpa/gradish/M0;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/M0$x;)V

    .line 191
    invoke-virtual {v2}, Lcom/ihoc/mgpa/gradish/M0$y;->a()V

    .line 193
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/M0;->u()V

    const/4 v0, 0x0

    .line 194
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "sdk async init over!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
