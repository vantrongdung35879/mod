.class public Lcom/tencent/mna/b2;
.super Ljava/lang/Object;
.source "MnaSystem.java"


# static fields
.field private static a:Z = false

.field private static b:Lcom/tencent/mna/MNAObserver; = null

.field private static c:Lcom/tencent/mna/GHObserver; = null

.field private static d:Lcom/tencent/mna/NetworkObserver; = null

.field private static e:Lcom/tencent/mna/RouterObserver; = null

.field private static f:Lcom/tencent/mna/m1; = null

.field private static g:J = 0x0L

.field private static h:J = 0x0L

.field private static i:Lcom/tencent/mna/NetworkBindingListener; = null

.field private static j:Landroid/content/Context; = null

.field private static k:Z = true

.field private static final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/mna/b2;->l:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()Lcom/tencent/mna/MNAObserver;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/b2;->b:Lcom/tencent/mna/MNAObserver;

    return-object v0
.end method

.method public static a(JJ)V
    .locals 0

    .line 93
    sput-wide p0, Lcom/tencent/mna/b2;->g:J

    .line 94
    sput-wide p2, Lcom/tencent/mna/b2;->h:J

    .line 95
    new-instance p0, Lcom/tencent/mna/b2$b;

    invoke-direct {p0}, Lcom/tencent/mna/b2$b;-><init>()V

    invoke-static {p0}, Lcom/tencent/mna/b2;->a(Lcom/tencent/mna/MNAObserver;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3

    .line 101
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 102
    invoke-static {}, Lcom/tencent/mna/n0;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 105
    const-class v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    check-cast p0, Landroid/app/Activity;

    :goto_0
    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    goto :goto_1

    .line 107
    :cond_0
    const-class v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    check-cast p0, Landroid/app/Application;

    goto :goto_1

    .line 110
    :cond_1
    invoke-static {}, Lcom/tencent/mna/n0;->a()Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    :goto_1
    if-nez v1, :cond_2

    if-nez p0, :cond_2

    return-void

    :cond_2
    if-nez p0, :cond_3

    .line 115
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 117
    :cond_3
    const-string v0, "registerProcExitHandler called"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/tencent/mna/b2$c;

    invoke-direct {v0}, Lcom/tencent/mna/b2$c;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_4
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZIZZILjava/lang/String;)V
    .locals 11

    const-string v1, "Init failed, error:"

    const-class v2, Lcom/tencent/mna/b2;

    monitor-enter v2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/b2;->j:Landroid/content/Context;

    .line 6
    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 8
    invoke-static/range {v3 .. v10}, Lcom/tencent/mna/b2;->a(Ljava/lang/String;ZIZILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 12
    invoke-static {p0}, Lcom/tencent/mna/t1;->b(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v2

    return-void

    .line 17
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/mna/a2;->a()Z

    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Lcom/tencent/mna/b2;->c(Z)V

    .line 23
    invoke-static {}, Lcom/tencent/mna/b2;->k()V

    .line 26
    invoke-static {}, Lcom/tencent/mna/b2;->m()V

    .line 29
    const-string v3, "6.3.36"

    move-object v4, p1

    invoke-static {p1, v3}, Lcom/tencent/mna/b2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {p1, p2}, Lcom/tencent/mna/b2;->a(Ljava/lang/String;Z)V

    .line 34
    invoke-static {}, Lcom/tencent/mna/b2;->l()V

    .line 37
    sget-boolean v3, Lcom/tencent/mna/b2;->a:Z

    if-nez v3, :cond_1

    .line 40
    invoke-static {p0}, Lcom/tencent/mna/b2;->a(Landroid/content/Context;)V

    .line 41
    invoke-static/range {p5 .. p5}, Lcom/tencent/mna/b2;->a(Z)V

    .line 45
    :cond_1
    invoke-static {}, Lcom/tencent/mna/h;->u()V

    .line 46
    invoke-static {}, Lcom/tencent/mna/core/diagnose/a;->a()V

    .line 48
    sput-boolean v0, Lcom/tencent/mna/b2;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    .line 51
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Lcom/tencent/mna/b2;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static a(Lcom/tencent/mna/GHObserver;)V
    .locals 0

    .line 96
    sput-object p0, Lcom/tencent/mna/b2;->c:Lcom/tencent/mna/GHObserver;

    return-void
.end method

.method public static a(Lcom/tencent/mna/MNAObserver;)V
    .locals 0

    .line 92
    sput-object p0, Lcom/tencent/mna/b2;->b:Lcom/tencent/mna/MNAObserver;

    return-void
.end method

.method public static a(Lcom/tencent/mna/NetworkBindingListener;)V
    .locals 0

    .line 100
    sput-object p0, Lcom/tencent/mna/b2;->i:Lcom/tencent/mna/NetworkBindingListener;

    return-void
.end method

.method public static a(Lcom/tencent/mna/NetworkObserver;)V
    .locals 0

    .line 97
    sput-object p0, Lcom/tencent/mna/b2;->d:Lcom/tencent/mna/NetworkObserver;

    return-void
.end method

.method public static a(Lcom/tencent/mna/RouterObserver;)V
    .locals 0

    .line 98
    sput-object p0, Lcom/tencent/mna/b2;->e:Lcom/tencent/mna/RouterObserver;

    return-void
.end method

.method public static a(Lcom/tencent/mna/m1;)V
    .locals 0

    .line 99
    sput-object p0, Lcom/tencent/mna/b2;->f:Lcom/tencent/mna/m1;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 80
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-static {p0, p1}, Lcom/tencent/mna/m2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 84
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/base/utils/e;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p0, p1}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 2

    .line 87
    sget-object v0, Lcom/tencent/mna/b2;->j:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mna/b2;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_0
    const-string v0, ""

    .line 91
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p1, v0}, Lcom/tencent/mna/base/jni/e;->a(IZLjava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;ZIZILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    .line 55
    sput-object p0, Lcom/tencent/mna/t0;->s:Ljava/lang/String;

    .line 56
    const-string v0, "1104783422"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "MNA\u6d4b\u8bd5Demo\u7684APPID \u3010\u8bf7\u4fee\u6539\u3011"

    invoke-static {v0}, Lcom/tencent/mna/b2;->a(Ljava/lang/String;)V

    .line 60
    :cond_0
    sput-boolean p1, Lcom/tencent/mna/t0;->r:Z

    .line 61
    invoke-static {p1}, Lcom/tencent/mna/v1;->a(I)V

    .line 62
    sput p2, Lcom/tencent/mna/t0;->a:I

    .line 63
    sput-boolean p3, Lcom/tencent/mna/w;->d:Z

    if-eqz p7, :cond_1

    .line 65
    iget p1, p7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput p1, Lcom/tencent/mna/w;->c:I

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sdk int:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Lcom/tencent/mna/base/utils/a$a;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", target api version:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/tencent/mna/w;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 69
    :cond_1
    invoke-static {p3}, Lcom/tencent/mna/b2;->b(Z)V

    .line 71
    sput p4, Lcom/tencent/mna/t0;->z:I

    .line 72
    sput-object p5, Lcom/tencent/mna/t0;->t:Ljava/lang/String;

    if-eqz p6, :cond_2

    .line 73
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "com/tencent/mna/"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    const/16 p3, 0x5f

    invoke-virtual {p6, p2, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tencent/mna/w;->e:Ljava/lang/String;

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p7, "com/tencent/mna_match/"

    invoke-direct {p1, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p2, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tencent/mna/w;->f:Ljava/lang/String;

    :cond_2
    if-eqz p5, :cond_3

    .line 77
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 78
    const-string p1, "UNKNOWN"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 79
    invoke-static {}, Lcom/tencent/mna/base/report/b;->b()Lcom/tencent/mna/base/report/b;

    move-result-object p1

    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/tencent/mna/base/report/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    :cond_3
    return-void
.end method

.method private static a(Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 54
    new-instance p0, Lcom/tencent/mna/l;

    invoke-direct {p0}, Lcom/tencent/mna/l;-><init>()V

    sget-object v0, Lcom/tencent/mna/b2;->j:Landroid/content/Context;

    new-instance v1, Lcom/tencent/mna/b2$a;

    invoke-direct {v1}, Lcom/tencent/mna/b2$a;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/l;->a(Landroid/content/Context;Lcom/tencent/mna/l$b;)V

    :cond_0
    return-void
.end method

.method static synthetic b()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/tencent/mna/b2;->g:J

    return-wide v0
.end method

.method private static b(Z)V
    .locals 2

    .line 2
    sget v0, Lcom/tencent/mna/w;->i:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/tencent/mna/w;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/tencent/mna/w;->h:Ljava/lang/String;

    sput-object p0, Lcom/tencent/mna/w;->j:Ljava/lang/String;

    .line 5
    sget p0, Lcom/tencent/mna/w;->i:I

    sput p0, Lcom/tencent/mna/w;->k:I

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "MNA Custom Svr: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mna/w;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/tencent/mna/w;->k:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-boolean v0, Lcom/tencent/mna/w;->g:Z

    const/16 v1, 0x791b

    if-eqz v0, :cond_1

    .line 10
    const-string p0, "control-out.mna.qq.com"

    sput-object p0, Lcom/tencent/mna/w;->j:Ljava/lang/String;

    .line 11
    sput v1, Lcom/tencent/mna/w;->k:I

    .line 12
    const-string p0, "MNA OVERSEA Env"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 16
    const-string p0, "control.mna.qq.com"

    sput-object p0, Lcom/tencent/mna/w;->j:Ljava/lang/String;

    .line 17
    sput v1, Lcom/tencent/mna/w;->k:I

    goto :goto_0

    .line 19
    :cond_2
    const-string/jumbo p0, "test.mocmna.qq.com"

    sput-object p0, Lcom/tencent/mna/w;->j:Ljava/lang/String;

    .line 20
    sput v1, Lcom/tencent/mna/w;->k:I

    .line 21
    const-string p0, "MNA\u6d4b\u8bd5\u73af\u5883"

    invoke-static {p0}, Lcom/tencent/mna/b2;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic c()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/tencent/mna/b2;->h:J

    return-wide v0
.end method

.method public static c(Z)V
    .locals 1

    .line 2
    sget-object v0, Lcom/tencent/mna/b2;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sput-boolean p0, Lcom/tencent/mna/b2;->k:Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/b2;->j:Landroid/content/Context;

    return-object v0
.end method

.method public static e()Lcom/tencent/mna/GHObserver;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/b2;->c:Lcom/tencent/mna/GHObserver;

    return-object v0
.end method

.method public static f()Lcom/tencent/mna/m1;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/b2;->f:Lcom/tencent/mna/m1;

    return-object v0
.end method

.method public static g()Lcom/tencent/mna/MNAObserver;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/b2;->b:Lcom/tencent/mna/MNAObserver;

    return-object v0
.end method

.method public static h()Lcom/tencent/mna/NetworkBindingListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/b2;->i:Lcom/tencent/mna/NetworkBindingListener;

    return-object v0
.end method

.method public static i()Lcom/tencent/mna/NetworkObserver;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/b2;->d:Lcom/tencent/mna/NetworkObserver;

    return-object v0
.end method

.method public static j()Lcom/tencent/mna/RouterObserver;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/b2;->e:Lcom/tencent/mna/RouterObserver;

    return-object v0
.end method

.method private static k()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/mna/b2;->j:Landroid/content/Context;

    const-string v1, "BuglySdkInfos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    const-string v1, "d819a2d50a"

    const-string v2, "6.3.36"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static l()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/tencent/mna/t0;->s:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mna/c3;->a(ILandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    const-string v0, "[N]ROUTER_QOS init failed, appid is not integer"

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static m()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/tencent/mna/t0;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/mna/base/report/d;->BANDWIDTH:Lcom/tencent/mna/base/report/d;

    invoke-static {v0}, Lcom/tencent/mna/base/report/f;->a(Lcom/tencent/mna/base/report/d;)Lcom/tencent/mna/y2;

    move-result-object v0

    const-string v1, "brandvalue"

    sget-object v2, Lcom/tencent/mna/t0;->q:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/tencent/mna/y2;->c()V

    .line 5
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/t0;->q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static n()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/mna/b2;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/tencent/mna/b2;->k:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized o()Z
    .locals 2

    const-class v0, Lcom/tencent/mna/b2;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/tencent/mna/b2;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
