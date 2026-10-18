.class public Lcom/uqm/crashsight/crashreport/biz/c;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field public static a:Lcom/uqm/crashsight/crashreport/biz/b; = null

.field private static b:Z = false

.field private static c:I = 0xa

.field private static d:J = 0x493e0L

.field private static e:J = 0x7530L

.field private static f:J = 0x0L

.field private static g:I = 0x0

.field private static h:J = 0x0L

.field private static i:J = 0x0L

.field private static j:J = 0x0L

.field private static k:Landroid/app/Application$ActivityLifecycleCallbacks; = null

.field private static l:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static m:Z = true

.field private static n:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 5

    .line 272
    sget-object v0, Lcom/uqm/crashsight/crashreport/biz/c;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x4

    .line 273
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/uqm/crashsight/crashreport/biz/b;->a(IZJ)V

    :cond_0
    return-void
.end method

.method public static a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 228
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object p0

    iget-wide p0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->m:J

    .line 230
    :cond_0
    sput-wide p0, Lcom/uqm/crashsight/crashreport/biz/c;->f:J

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/biz/c;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 545
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/biz/c;->b:Z

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_2

    .line 4524
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 4525
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 4531
    :try_start_0
    sget-object v0, Lcom/uqm/crashsight/crashreport/biz/c;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_2

    .line 4532
    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4535
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 549
    sput-boolean p0, Lcom/uqm/crashsight/crashreport/biz/c;->b:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V
    .locals 5

    .line 190
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/biz/c;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->e:Z

    sput-boolean v0, Lcom/uqm/crashsight/crashreport/biz/c;->m:Z

    .line 196
    new-instance v1, Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-direct {v1, p0, v0}, Lcom/uqm/crashsight/crashreport/biz/b;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/uqm/crashsight/crashreport/biz/c;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    const/4 v0, 0x1

    .line 198
    sput-boolean v0, Lcom/uqm/crashsight/crashreport/biz/c;->b:Z

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p1}, Lcom/uqm/crashsight/CrashSightStrategy;->getUserInfoActivity()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/uqm/crashsight/crashreport/biz/c;->l:Ljava/lang/Class;

    .line 204
    invoke-virtual {p1}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppReportDelay()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    cmp-long v4, v2, v0

    if-gtz v4, :cond_2

    .line 208
    invoke-static {p0, p1}, Lcom/uqm/crashsight/crashreport/biz/c;->c(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V

    return-void

    .line 210
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object v0

    new-instance v1, Lcom/uqm/crashsight/crashreport/biz/c$1;

    invoke-direct {v1, p0, p1}, Lcom/uqm/crashsight/crashreport/biz/c$1;-><init>(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;Z)V
    .locals 4

    .line 239
    sget-object v0, Lcom/uqm/crashsight/crashreport/biz/c;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 244
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "\u51b7\u542f\u52a8\u53d1\u9001\u8054\u7f51\u4e0a\u62a5\u7528\u6237\u4fe1\u606f\u7684\u64cd\u4f5c\u5df2\u63d0\u524d\u5230\u4fdd\u5b58\u51b7\u542f\u52a8\u7684\u7ebf\u7a0b"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 249
    :cond_1
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->m:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 250
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->m:J

    sput-wide v0, Lcom/uqm/crashsight/crashreport/biz/c;->e:J

    .line 252
    :cond_2
    iget p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->r:I

    if-lez p1, :cond_3

    .line 253
    iget p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->r:I

    sput p1, Lcom/uqm/crashsight/crashreport/biz/c;->c:I

    .line 255
    :cond_3
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->s:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    .line 256
    iget-wide p0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->s:J

    sput-wide p0, Lcom/uqm/crashsight/crashreport/biz/c;->d:J

    :cond_4
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 556
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, ">>> %s %s <<<"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 557
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/util/List;

    .line 560
    invoke-static {p0, p1}, Lcom/uqm/crashsight/crashreport/biz/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 580
    sput-boolean p0, Lcom/uqm/crashsight/crashreport/biz/c;->n:Z

    return-void
.end method

.method static synthetic b(J)J
    .locals 0

    .line 28
    sput-wide p0, Lcom/uqm/crashsight/crashreport/biz/c;->j:J

    return-wide p0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/uqm/crashsight/crashreport/biz/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 5

    .line 281
    sget-object v0, Lcom/uqm/crashsight/crashreport/biz/c;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x6

    .line 282
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/uqm/crashsight/crashreport/biz/b;->a(IZJ)V

    :cond_0
    return-void
.end method

.method private static b(Landroid/app/Activity;)V
    .locals 7

    .line 565
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/biz/c;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 569
    :try_start_0
    const-string v1, "com.uqm.crashsight.FragmentMonitor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 570
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 571
    const-string v3, "registerFragmentCallbacks"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/Activity;

    aput-object v6, v5, v0

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 572
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 573
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 575
    :catchall_0
    const-string p0, "FragmentMonitor not found"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/uqm/crashsight/crashreport/biz/c;->c(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V

    return-void
.end method

.method static synthetic c(J)J
    .locals 0

    .line 28
    sput-wide p0, Lcom/uqm/crashsight/crashreport/biz/c;->h:J

    return-wide p0
.end method

.method static synthetic c()Ljava/lang/Class;
    .locals 1

    .line 28
    sget-object v0, Lcom/uqm/crashsight/crashreport/biz/c;->l:Ljava/lang/Class;

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/v;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Lcom/uqm/crashsight/CrashSightStrategy;->recordUserInfoOnceADay()Z

    move-result v2

    .line 155
    invoke-virtual {p1}, Lcom/uqm/crashsight/CrashSightStrategy;->isEnableUserInfo()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_4

    .line 1116
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p1

    .line 1117
    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 1118
    sget-object v5, Lcom/uqm/crashsight/crashreport/biz/c;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-virtual {v5, v2}, Lcom/uqm/crashsight/crashreport/biz/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    .line 1122
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1123
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    .line 1124
    iget-object v7, v6, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    iget-object v8, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1128
    iget v7, v6, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->b:I

    if-ne v7, v0, :cond_2

    .line 1132
    invoke-static {}, Lcom/uqm/crashsight/proguard/v;->a()J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-lez v9, :cond_3

    .line 1137
    iget-wide v9, v6, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->e:J

    cmp-long v11, v9, v7

    if-ltz v11, :cond_2

    .line 1141
    iget-wide p0, v6, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->f:J

    cmp-long v0, p0, v3

    if-gtz v0, :cond_1

    .line 1143
    sget-object p0, Lcom/uqm/crashsight/crashreport/biz/c;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/biz/b;->b()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 2075
    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2100
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/a;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->s:Ljava/lang/String;

    :cond_5
    if-eqz p1, :cond_8

    .line 2303
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_6

    .line 2304
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_8

    .line 2310
    :try_start_0
    sget-object p1, Lcom/uqm/crashsight/crashreport/biz/c;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez p1, :cond_7

    .line 2311
    new-instance p1, Lcom/uqm/crashsight/crashreport/biz/c$2;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/biz/c$2;-><init>()V

    sput-object p1, Lcom/uqm/crashsight/crashreport/biz/c;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 2509
    :cond_7
    sget-object p1, Lcom/uqm/crashsight/crashreport/biz/c;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 2510
    invoke-static {}, Lcom/uqm/crashsight/crashreport/biz/a;->a()Landroid/app/Activity;

    move-result-object p0

    .line 2511
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/biz/c;->b(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 2513
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 173
    :cond_8
    :goto_3
    sget-boolean p0, Lcom/uqm/crashsight/crashreport/biz/c;->m:Z

    if-eqz p0, :cond_9

    .line 3263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/uqm/crashsight/crashreport/biz/c;->i:J

    .line 3264
    sget-object p0, Lcom/uqm/crashsight/crashreport/biz/c;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-virtual {p0, v0, v0, v3, v4}, Lcom/uqm/crashsight/crashreport/biz/b;->a(IZJ)V

    .line 3265
    const-string p0, "[session] launch app, new start"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 177
    sget-object p0, Lcom/uqm/crashsight/crashreport/biz/c;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/biz/b;->a()V

    .line 179
    sget-object p0, Lcom/uqm/crashsight/crashreport/biz/c;->a:Lcom/uqm/crashsight/crashreport/biz/b;

    const-wide/32 v0, 0x1499700

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/biz/b;->a(J)V

    :cond_9
    return-void
.end method

.method static synthetic d()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/uqm/crashsight/crashreport/biz/c;->i:J

    return-wide v0
.end method

.method static synthetic e()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/uqm/crashsight/crashreport/biz/c;->h:J

    return-wide v0
.end method

.method static synthetic f()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/uqm/crashsight/crashreport/biz/c;->f:J

    return-wide v0
.end method

.method static synthetic g()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/uqm/crashsight/crashreport/biz/c;->e:J

    return-wide v0
.end method

.method static synthetic h()I
    .locals 2

    .line 28
    sget v0, Lcom/uqm/crashsight/crashreport/biz/c;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/uqm/crashsight/crashreport/biz/c;->g:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .line 28
    sget v0, Lcom/uqm/crashsight/crashreport/biz/c;->g:I

    return v0
.end method

.method static synthetic j()I
    .locals 1

    .line 28
    sget v0, Lcom/uqm/crashsight/crashreport/biz/c;->c:I

    return v0
.end method

.method static synthetic k()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/biz/c;->m:Z

    return v0
.end method

.method static synthetic l()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/uqm/crashsight/crashreport/biz/c;->j:J

    return-wide v0
.end method

.method static synthetic m()J
    .locals 2

    .line 28
    sget-wide v0, Lcom/uqm/crashsight/crashreport/biz/c;->d:J

    return-wide v0
.end method
