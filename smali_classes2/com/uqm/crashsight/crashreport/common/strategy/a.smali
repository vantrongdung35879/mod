.class public final Lcom/uqm/crashsight/crashreport/common/strategy/a;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static a:Lcom/uqm/crashsight/crashreport/common/strategy/a;

.field private static g:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/uqm/crashsight/proguard/n;

.field private final d:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

.field private e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

.field private f:Landroid/content/Context;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/a;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    .line 60
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->h:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Landroid/content/Context;

    .line 2285
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2286
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p1

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->A:Ljava/lang/String;

    .line 2287
    const-string v0, "oversea"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2288
    sput-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    .line 2289
    sput-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    goto :goto_0

    .line 2290
    :cond_0
    const-string v0, "na_https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2291
    sput-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    .line 2292
    sput-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    .line 65
    :cond_1
    :goto_0
    new-instance p1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    .line 66
    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b:Ljava/util/List;

    .line 67
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c:Lcom/uqm/crashsight/proguard/n;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/uqm/crashsight/crashreport/common/strategy/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/a;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/strategy/a;"
        }
    .end annotation

    const-class v0, Lcom/uqm/crashsight/crashreport/common/strategy/a;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-direct {v1, p0, p1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    .line 77
    :cond_0
    sget-object p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a:Lcom/uqm/crashsight/crashreport/common/strategy/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private a(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;Z)V
    .locals 6

    .line 145
    const-class v0, Lcom/uqm/crashsight/crashreport/biz/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "[Strategy] Notify %s"

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 146
    invoke-static {p1, p2}, Lcom/uqm/crashsight/crashreport/biz/c;->a(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;Z)V

    .line 147
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/a;

    .line 149
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    invoke-static {v0, v5}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v2, p1}, Lcom/uqm/crashsight/a;->onServerStrategyChanged(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 152
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 163
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/v;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    sput-object p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->g:Ljava/lang/String;

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 164
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "URL user set is invalid."

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized b()Lcom/uqm/crashsight/crashreport/common/strategy/a;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/crashreport/common/strategy/a;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a:Lcom/uqm/crashsight/crashreport/common/strategy/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 3274
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/proguard/d;->a(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3275
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3276
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/proguard/h;

    .line 3277
    iget-object v2, v1, Lcom/uqm/crashsight/proguard/h;->g:[B

    if-eqz v2, :cond_0

    .line 3278
    iget-object v1, v1, Lcom/uqm/crashsight/proguard/h;->g:[B

    sget-object v2, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/v;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 86
    :goto_0
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    if-eqz v1, :cond_2

    .line 88
    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/v;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    sget-object v2, Lcom/uqm/crashsight/crashreport/common/strategy/a;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    sget-object v2, Lcom/uqm/crashsight/crashreport/common/strategy/a;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    goto :goto_1

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    sget-object v2, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    sget-object v2, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    .line 95
    :goto_1
    invoke-static {}, Lcom/uqm/crashsight/proguard/z;->a()Lcom/uqm/crashsight/proguard/z;

    move-result-object v1

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->q:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/proguard/z;->a(Ljava/util/Map;)V

    .line 96
    sget-object v1, Lcom/uqm/crashsight/proguard/z;->a:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    iput-boolean v0, v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 102
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 104
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    if-nez v1, :cond_3

    .line 105
    const-string v1, "localStrategy is null"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    invoke-direct {p0, v1, v0}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;Z)V

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getStrategylastUpdateTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "download strategy time = %d"

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getStrategylastUpdateTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    iget-wide v6, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->l:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 179
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    iget-wide v4, p1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->l:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "local strategy time = %d"

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 183
    :cond_1
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;-><init>()V

    .line 185
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/uqm/crashsight/proguard/z;->a:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    .line 186
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableQuery()Z

    move-result v2

    iput-boolean v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->g:Z

    .line 187
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableUserInfo()Z

    move-result v2

    iput-boolean v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->f:Z

    .line 190
    sget-object v2, Lcom/uqm/crashsight/crashreport/common/strategy/a;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/uqm/crashsight/crashreport/common/strategy/a;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/v;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 191
    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/v;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 192
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "[Strategy] Upload url changes to %s"

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    .line 195
    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/v;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 197
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrl()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v3

    .line 196
    const-string v2, "[Strategy] Exception upload url changes to %s"

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    .line 201
    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 202
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 203
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    .line 206
    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getStrategylastUpdateTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_7

    .line 207
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getStrategylastUpdateTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->l:J

    .line 210
    :cond_7
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 211
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->q:Ljava/util/Map;

    .line 212
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMapMap()Ljava/util/Map;

    move-result-object v2

    iget-boolean v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->h:Z

    if-eqz v2, :cond_a

    .line 3926
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    .line 3932
    :cond_8
    const-string v5, "B11"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_9

    goto :goto_1

    .line 3936
    :cond_9
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 212
    :cond_a
    :goto_1
    iput-boolean v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->h:Z

    .line 213
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMap()Ljava/util/Map;

    move-result-object v2

    const-string v4, "B3"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 215
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->t:J

    .line 218
    :cond_b
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventTimeInterval()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->m:J

    .line 219
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventTimeInterval()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->s:J

    .line 221
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMap()Ljava/util/Map;

    move-result-object v2

    const-string v4, "B27"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 222
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    .line 224
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_c

    .line 226
    iput v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->r:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 229
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 234
    :cond_c
    :goto_2
    iget-boolean v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    .line 239
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->f:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->h:Z

    .line 240
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v7, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->i:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v8, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->j:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->k:Z

    .line 241
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-wide v10, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->m:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v11, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->l:J

    .line 242
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v12, 0x9

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v2, v12, v3

    aput-object v4, v12, v1

    const/4 v2, 0x2

    aput-object v5, v12, v2

    const/4 v4, 0x3

    aput-object v6, v12, v4

    const/4 v4, 0x4

    aput-object v7, v12, v4

    const/4 v4, 0x5

    aput-object v8, v12, v4

    const/4 v4, 0x6

    aput-object v9, v12, v4

    const/4 v4, 0x7

    aput-object v10, v12, v4

    const/16 v4, 0x8

    aput-object v11, v12, v4

    .line 234
    const-string v4, "[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, strategyLastUpdateTime:%d"

    invoke-static {v4, v12}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 244
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    .line 245
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uqm/crashsight/proguard/v;->d(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_d

    .line 246
    const-string v4, "[Strategy] download url is null"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 247
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    iput-object v5, v4, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    .line 249
    :cond_d
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/v;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 250
    const-string p1, "[Strategy] download crashurl is null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 251
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    iput-object v5, p1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    .line 255
    :cond_e
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/uqm/crashsight/proguard/d;->b(I)V

    .line 256
    new-instance p1, Lcom/uqm/crashsight/proguard/h;

    invoke-direct {p1}, Lcom/uqm/crashsight/proguard/h;-><init>()V

    .line 257
    iput v2, p1, Lcom/uqm/crashsight/proguard/h;->b:I

    .line 258
    iget-wide v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->c:J

    iput-wide v2, p1, Lcom/uqm/crashsight/proguard/h;->a:J

    .line 259
    iget-wide v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->d:J

    iput-wide v2, p1, Lcom/uqm/crashsight/proguard/h;->e:J

    .line 260
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->a(Landroid/os/Parcelable;)[B

    move-result-object v2

    iput-object v2, p1, Lcom/uqm/crashsight/proguard/h;->g:[B

    .line 261
    invoke-static {}, Lcom/uqm/crashsight/proguard/d;->a()Lcom/uqm/crashsight/proguard/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/uqm/crashsight/proguard/d;->a(Lcom/uqm/crashsight/proguard/h;)Z

    .line 264
    invoke-direct {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;Z)V

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;I)V
    .locals 5

    const/16 v0, 0x348

    if-eq p2, v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/a;

    .line 305
    :try_start_0
    const-string v1, "[Strategy] Notify %s"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/a;->onSelfDefiedStrategyChanged(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 308
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 314
    :try_start_0
    const-string v0, "[Strategy] Cloud Strategy is  %s"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 316
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    return-object v0

    .line 132
    :cond_2
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->g:Ljava/lang/String;

    .line 133
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    return-object v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
