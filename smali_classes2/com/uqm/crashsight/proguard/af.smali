.class public final Lcom/uqm/crashsight/proguard/af;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/util/concurrent/Semaphore; = null

.field private static volatile b:Z = false

.field private static g:Landroid/app/Application$ActivityLifecycleCallbacks; = null

.field private static j:Z = false

.field private static k:Z = false

.field private static l:Lcom/uqm/crashsight/proguard/af;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:I

.field private final f:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/proguard/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;III)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/af;->f:Landroid/app/ActivityManager$RunningAppProcessInfo;

    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Lcom/uqm/crashsight/proguard/af;->b:Z

    .line 73
    iput-object p1, p0, Lcom/uqm/crashsight/proguard/af;->c:Landroid/content/Context;

    .line 74
    iput p2, p0, Lcom/uqm/crashsight/proguard/af;->d:I

    .line 75
    iput p3, p0, Lcom/uqm/crashsight/proguard/af;->e:I

    .line 76
    new-instance p2, Ljava/util/concurrent/Semaphore;

    invoke-direct {p2, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object p2, Lcom/uqm/crashsight/proguard/af;->a:Ljava/util/concurrent/Semaphore;

    .line 77
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/uqm/crashsight/proguard/af;->h:Ljava/util/List;

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    mul-int/lit16 p3, p4, 0x400

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object p2, Lcom/uqm/crashsight/proguard/t;->a:Ljava/lang/StringBuilder;

    .line 79
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p2

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/t;->a(Lcom/uqm/crashsight/crashreport/a;)V

    .line 80
    invoke-static {}, Lcom/uqm/crashsight/proguard/t;->a()V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p4, :cond_0

    .line 82
    iget-object p3, p0, Lcom/uqm/crashsight/proguard/af;->h:Ljava/util/List;

    new-instance v1, Lcom/uqm/crashsight/proguard/t$a;

    invoke-direct {v1}, Lcom/uqm/crashsight/proguard/t$a;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iput v0, p0, Lcom/uqm/crashsight/proguard/af;->i:I

    .line 85
    invoke-static {}, Lcom/uqm/crashsight/proguard/ab;->a()I

    move-result p2

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/t;->a(I)V

    .line 1098
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Application;

    if-eqz p2, :cond_1

    .line 1099
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 1106
    :try_start_0
    sget-object p2, Lcom/uqm/crashsight/proguard/af;->g:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz p2, :cond_2

    return-void

    .line 1109
    :cond_2
    new-instance p2, Lcom/uqm/crashsight/proguard/af$1;

    invoke-direct {p2, p0}, Lcom/uqm/crashsight/proguard/af$1;-><init>(Lcom/uqm/crashsight/proguard/af;)V

    sput-object p2, Lcom/uqm/crashsight/proguard/af;->g:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1147
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1149
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    :cond_3
    return-void
.end method

.method public static a()Lcom/uqm/crashsight/proguard/af;
    .locals 1

    .line 62
    sget-object v0, Lcom/uqm/crashsight/proguard/af;->l:Lcom/uqm/crashsight/proguard/af;

    return-object v0
.end method

.method public static a(Landroid/content/Context;III)V
    .locals 1

    .line 55
    sget-object v0, Lcom/uqm/crashsight/proguard/af;->l:Lcom/uqm/crashsight/proguard/af;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/uqm/crashsight/proguard/af;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/uqm/crashsight/proguard/af;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/uqm/crashsight/proguard/af;->l:Lcom/uqm/crashsight/proguard/af;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/proguard/af;)V
    .locals 0

    .line 1166
    sget-boolean p0, Lcom/uqm/crashsight/proguard/af;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 1167
    sput-boolean p0, Lcom/uqm/crashsight/proguard/af;->b:Z

    .line 1168
    sget-object p0, Lcom/uqm/crashsight/proguard/af;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x1

    .line 233
    sput-boolean v0, Lcom/uqm/crashsight/proguard/af;->j:Z

    return-void
.end method

.method static synthetic b(Lcom/uqm/crashsight/proguard/af;)V
    .locals 0

    const/4 p0, 0x1

    .line 1176
    sput-boolean p0, Lcom/uqm/crashsight/proguard/af;->b:Z

    return-void
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x1

    .line 237
    sput-boolean v0, Lcom/uqm/crashsight/proguard/af;->k:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    .line 187
    :goto_0
    sget-boolean v8, Lcom/uqm/crashsight/proguard/af;->b:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 189
    :try_start_0
    const-string v8, "Routine wait"

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v8, v10}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 190
    sget-object v8, Lcom/uqm/crashsight/proguard/af;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v8}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 191
    const-string v8, "Routine wakeup"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 193
    invoke-static {v8}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-wide/16 v10, 0x3e8

    cmp-long v8, v4, v2

    if-eqz v8, :cond_1

    .line 198
    iget v8, p0, Lcom/uqm/crashsight/proguard/af;->e:I

    int-to-long v12, v8

    mul-long v12, v12, v10

    add-long/2addr v12, v4

    cmp-long v8, v12, v0

    if-gtz v8, :cond_2

    .line 201
    :cond_1
    iget-object v4, p0, Lcom/uqm/crashsight/proguard/af;->f:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {v4}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/app/ActivityManager$RunningAppProcessInfo;)I

    move-result v4

    .line 202
    invoke-static {v4}, Lcom/uqm/crashsight/proguard/t;->b(I)V

    move-wide v4, v0

    :cond_2
    cmp-long v8, v6, v2

    if-eqz v8, :cond_3

    .line 207
    iget v8, p0, Lcom/uqm/crashsight/proguard/af;->d:I

    int-to-long v12, v8

    mul-long v12, v12, v10

    add-long/2addr v12, v6

    cmp-long v8, v12, v0

    if-gtz v8, :cond_6

    .line 210
    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/proguard/t;->b()V

    .line 211
    iget-object v6, p0, Lcom/uqm/crashsight/proguard/af;->h:Ljava/util/List;

    iget v7, p0, Lcom/uqm/crashsight/proguard/af;->i:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/uqm/crashsight/proguard/af;->i:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Lcom/uqm/crashsight/proguard/t;->a(Ljava/util/List;J)V

    .line 212
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/uqm/crashsight/proguard/af;->h:Ljava/util/List;

    invoke-static {v7}, Lcom/uqm/crashsight/proguard/t;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->updateMemInfo(Ljava/lang/String;)V

    .line 213
    sget-boolean v6, Lcom/uqm/crashsight/proguard/af;->j:Z

    if-eqz v6, :cond_4

    .line 214
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->updateUserKv()V

    .line 215
    sput-boolean v9, Lcom/uqm/crashsight/proguard/af;->j:Z

    .line 217
    :cond_4
    sget-boolean v6, Lcom/uqm/crashsight/proguard/af;->k:Z

    if-eqz v6, :cond_5

    .line 218
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->updateUserLog()V

    .line 219
    sput-boolean v9, Lcom/uqm/crashsight/proguard/af;->k:Z

    :cond_5
    move-wide v6, v0

    :cond_6
    add-long/2addr v0, v10

    .line 225
    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    .line 227
    invoke-static {v8}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
