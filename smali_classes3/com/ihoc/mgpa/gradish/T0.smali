.class public abstract Lcom/ihoc/mgpa/gradish/T0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/gradish/T0$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Z

.field private static final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_TIMZ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/T0;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/T0;->b:Z

    .line 9
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/T0;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/T0;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static a(Ljava/util/HashMap;)V
    .locals 4

    .line 3
    sget-object v0, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->PATTERN2:Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil$DatePattern;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_time"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DateUtil;->getCurrentTimeStampMillis()Ljava/lang/String;

    move-result-object v0

    const-string v1, "report_time"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x100b

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "version_code"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string/jumbo v0, "version_name"

    const-string v1, "4.1.0.7"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/ihoc/mgpa/gradish/t1;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vmp_number"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/ihoc/mgpa/gradish/T0;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "open_id"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/ihoc/mgpa/gradish/N;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xid"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/ihoc/mgpa/gradish/h0;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oaid"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductManufacture()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v0, "plat_type"

    const-string v1, "Android"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/EngineUtil;->getGameEngineType()Lcom/ihoc/mgpa/gradish/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/K;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk_tag"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->getInstallSign()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_sign"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sub_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bundle_id"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "os_version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcom/ihoc/mgpa/report/Reporter;->hadInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/ihoc/mgpa/gradish/T0;->f()V

    .line 26
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/report/entity/BeaconEvent;->VMP_WM_REPORT:Lcom/ihoc/mgpa/report/entity/BeaconEvent;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/ihoc/mgpa/report/Reporter;->reportSync(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    .line 28
    invoke-static {v0, p0, v2}, Lcom/ihoc/mgpa/report/Reporter;->reportSync(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;I)Z

    const-wide/16 v2, 0x3e8

    .line 29
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 30
    invoke-static {v0, p0, v1}, Lcom/ihoc/mgpa/report/Reporter;->reportSync(Lcom/ihoc/mgpa/report/entity/BeaconEvent;Ljava/util/HashMap;I)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 2
    sput-boolean p0, Lcom/ihoc/mgpa/gradish/T0;->b:Z

    return p0
.end method

.method static synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/T0;->b:Z

    return v0
.end method

.method static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/T0;->g()V

    return-void
.end method

.method public static d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/T0;->b:Z

    return v0
.end method

.method private static e()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()V
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

.method private static g()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/T0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const v2, 0x71717874

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/gradish/k;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 7
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "fy no need to report!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const v3, 0x6f636b62

    invoke-static {v1, v3}, Lcom/ihoc/mgpa/gradish/k;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const v0, -0x77eeaa01

    invoke-static {v3, v0}, Lcom/ihoc/mgpa/gradish/k;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "no data is found to report!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 16
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "hash"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hash_b"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/T0;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public static h()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/T0;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "this startup has already reported data!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/ihoc/mgpa/gradish/T0$a;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/T0$a;-><init>()V

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/b0;->a(Lcom/ihoc/mgpa/gradish/v1;)V

    .line 21
    sget-object v0, Lcom/ihoc/mgpa/gradish/T0;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 22
    new-instance v1, Lcom/ihoc/mgpa/gradish/T0$b;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/T0$b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
