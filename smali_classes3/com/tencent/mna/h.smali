.class public Lcom/tencent/mna/h;
.super Ljava/lang/Object;
.source "AccelerateManager.java"


# static fields
.field private static volatile a:Lcom/tencent/mna/a1; = null

.field private static volatile b:Lcom/tencent/mna/j; = null

.field private static c:Lcom/tencent/mna/f1; = null

.field private static d:I = -0x1

.field private static e:Ljava/util/concurrent/ScheduledExecutorService;

.field private static f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/concurrent/ScheduledExecutorService;

.field private static h:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private static i:Lcom/tencent/mna/base/report/a;

.field private static j:I

.field private static k:I

.field private static l:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static A()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    invoke-virtual {v0}, Lcom/tencent/mna/j;->g()V

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "queryPreciseKartin report failed, not start speed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryPreciseKartin report exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static B()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/tencent/mna/i;->d:Z

    .line 2
    sget-boolean v0, Lcom/tencent/mna/t0;->y:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mna/n;->l()V

    :cond_0
    return-void
.end method

.method private static declared-synchronized C()V
    .locals 4

    const-string/jumbo v0, "stopDelayTask exception:"

    const-class v1, Lcom/tencent/mna/h;

    monitor-enter v1

    .line 1
    :try_start_0
    sget-object v2, Lcom/tencent/mna/h;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/mna/h;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    .line 2
    const-string/jumbo v2, "stopDelayTask"

    invoke-static {v2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object v2, Lcom/tencent/mna/h;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 5
    sget-object v2, Lcom/tencent/mna/h;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v2, 0x0

    .line 6
    sput-object v2, Lcom/tencent/mna/h;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    sput-object v2, Lcom/tencent/mna/h;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private static declared-synchronized D()V
    .locals 4

    const-string/jumbo v0, "stopTimerForStopMna exception:"

    const-class v1, Lcom/tencent/mna/h;

    monitor-enter v1

    .line 1
    :try_start_0
    sget-object v2, Lcom/tencent/mna/h;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/mna/h;->h:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    .line 2
    const-string/jumbo v2, "stopTimerForStopMna"

    invoke-static {v2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object v2, Lcom/tencent/mna/h;->h:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 5
    sget-object v2, Lcom/tencent/mna/h;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v2, 0x0

    .line 6
    sput-object v2, Lcom/tencent/mna/h;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    sput-object v2, Lcom/tencent/mna/h;->g:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private static a(IZ)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 143
    :cond_0
    invoke-static {}, Lcom/tencent/mna/d;->B1()I

    move-result p1

    if-ge p0, p1, :cond_1

    const/4 p0, -0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(IZLcom/tencent/mna/f1;Lcom/tencent/mna/j;)I
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/h;->b(IZLcom/tencent/mna/f1;Lcom/tencent/mna/j;)I

    move-result p0

    return p0
.end method

.method private static a(Lcom/tencent/mna/f1;Lcom/tencent/mna/j;)I
    .locals 3

    if-nez p0, :cond_0

    .line 144
    sget p0, Lcom/tencent/mna/i;->g:I

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, -0x3

    return p0

    .line 151
    :cond_1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->g(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 152
    invoke-static {}, Lcom/tencent/mna/d;->w1()I

    move-result p0

    if-eqz p0, :cond_a

    .line 153
    invoke-static {}, Lcom/tencent/mna/h;->q()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 156
    invoke-static {}, Lcom/tencent/mna/d;->Z()I

    move-result p0

    if-lez p0, :cond_4

    .line 158
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->j(Landroid/content/Context;)I

    move-result p0

    invoke-static {}, Lcom/tencent/mna/d;->b0()I

    move-result v0

    if-le p0, v0, :cond_3

    .line 160
    invoke-virtual {p1}, Lcom/tencent/mna/j;->e()I

    move-result p0

    .line 161
    invoke-virtual {p1}, Lcom/tencent/mna/j;->e()I

    move-result p1

    if-lez p0, :cond_2

    .line 163
    invoke-static {}, Lcom/tencent/mna/d;->a0()I

    move-result v0

    if-ge p0, v0, :cond_2

    if-lez p1, :cond_2

    .line 164
    invoke-static {}, Lcom/tencent/mna/d;->a0()I

    move-result p0

    if-ge p1, p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/16 p0, -0xa

    return p0

    :cond_3
    const/16 p0, -0x9

    return p0

    :cond_4
    const/4 p0, -0x8

    return p0

    .line 178
    :cond_5
    sget-object p0, Lcom/tencent/mna/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {}, Lcom/tencent/mna/d;->E1()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 180
    invoke-static {}, Lcom/tencent/mna/base/utils/b;->d()I

    move-result v1

    invoke-static {}, Lcom/tencent/mna/d;->D1()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 182
    invoke-virtual {p1}, Lcom/tencent/mna/j;->e()I

    move-result v1

    .line 183
    invoke-virtual {p1}, Lcom/tencent/mna/j;->e()I

    move-result p1

    if-lez v1, :cond_7

    .line 185
    invoke-static {}, Lcom/tencent/mna/d;->C1()I

    move-result v2

    if-ge v1, v2, :cond_7

    if-lez p1, :cond_7

    .line 186
    invoke-static {}, Lcom/tencent/mna/d;->C1()I

    move-result v1

    if-ge p1, v1, :cond_7

    .line 188
    invoke-static {}, Lcom/tencent/mna/d;->I1()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/tencent/mna/v;->a()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p0, 0x2

    return p0

    .line 191
    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return v0

    :cond_7
    const/4 p0, -0x7

    return p0

    :cond_8
    const/4 p0, -0x6

    return p0

    :cond_9
    const/4 p0, -0x5

    return p0

    :cond_a
    const/4 p0, -0x4

    return p0
.end method

.method private static a(Lcom/tencent/mna/j;Lcom/tencent/mna/base/report/a;J)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mna/base/report/a;->k()Lcom/tencent/mna/a0;

    move-result-object v1

    .line 201
    invoke-virtual {p1}, Lcom/tencent/mna/base/report/a;->j()Lcom/tencent/mna/a0;

    move-result-object p1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[N]START_SPEED compareDelay total elapse["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/tencent/mna/i3;

    .line 213
    invoke-static {p0, p2, p3}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/j;J)Lcom/tencent/mna/b1;

    move-result-object p0

    .line 214
    invoke-static {}, Lcom/tencent/mna/h;->l()Lcom/tencent/mna/h1;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/tencent/mna/i3;-><init>(Lcom/tencent/mna/b1;Lcom/tencent/mna/h1;)V

    .line 215
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mna/i3;->a(Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)I

    move-result p0

    .line 217
    sget-object p2, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    invoke-static {p2, v1, p1}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)V

    return p0

    .line 218
    :cond_2
    :goto_0
    const-string p0, "START_SPEED compareDelay NullPointer exception: forwardDelaysInfo or directDelaysInfo is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return v0

    .line 219
    :cond_3
    :goto_1
    const-string p0, "START_SPEED compareDelay NullPointer exception: facade or reporter is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return v0
.end method

.method static synthetic a(Lcom/tencent/mna/y2;Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)I
    .locals 0

    .line 12
    invoke-static/range {p0 .. p8}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/y2;Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/tencent/mna/h;->l:J

    return-wide p0
.end method

.method static synthetic a(Lcom/tencent/mna/a1;)Lcom/tencent/mna/a1;
    .locals 0

    .line 9
    sput-object p0, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    return-object p0
.end method

.method private static a(Lcom/tencent/mna/j;J)Lcom/tencent/mna/b1;
    .locals 2

    .line 220
    invoke-static {}, Lcom/tencent/mna/d;->h0()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 222
    new-instance p0, Lcom/tencent/mna/i0;

    .line 223
    invoke-static {}, Lcom/tencent/mna/d;->a1()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {}, Lcom/tencent/mna/d;->b1()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/mna/i0;-><init>(Ljava/lang/String;IJ)V

    return-object p0

    .line 227
    :cond_0
    new-instance v0, Lcom/tencent/mna/h$a;

    invoke-direct {v0, p1, p2, p0}, Lcom/tencent/mna/h$a;-><init>(JLcom/tencent/mna/j;)V

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mna/f1;)Lcom/tencent/mna/f1;
    .locals 0

    .line 13
    sput-object p0, Lcom/tencent/mna/h;->c:Lcom/tencent/mna/f1;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/mna/j;)Lcom/tencent/mna/j;
    .locals 0

    .line 19
    sput-object p0, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, ":"

    const-string v1, ","

    .line 323
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 324
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p0, v4

    .line 325
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_2

    .line 326
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 330
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 332
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 335
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 338
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object p1

    .line 343
    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method static synthetic a(Z)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/tencent/mna/h;->d(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()V
    .locals 0

    .line 8
    invoke-static {}, Lcom/tencent/mna/h;->C()V

    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/tencent/mna/h;->c(I)V

    return-void
.end method

.method static synthetic a(ILcom/tencent/mna/j;Lcom/tencent/mna/base/report/a;)V
    .locals 0

    .line 7
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(ILcom/tencent/mna/j;Lcom/tencent/mna/base/report/a;)V

    return-void
.end method

.method static synthetic a(ILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/tencent/mna/h;->b(ILjava/lang/String;)V

    return-void
.end method

.method private static a(ILjava/lang/String;Lcom/tencent/mna/y2;)V
    .locals 3

    if-nez p0, :cond_0

    .line 228
    invoke-static {}, Lcom/tencent/mna/d;->W()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->f(I)V

    :cond_0
    const-string v0, ":"

    if-eqz p2, :cond_1

    .line 233
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ctl_errorno"

    invoke-interface {p2, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    if-nez p0, :cond_1

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/d;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/tencent/mna/w;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "control_ip"

    invoke-interface {p2, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/d;->a1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->b1()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "speed_ip"

    invoke-interface {p2, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 239
    invoke-static {}, Lcom/tencent/mna/d;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ex_client_ip"

    invoke-interface {p2, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 240
    invoke-static {}, Lcom/tencent/mna/d;->h0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "plat_flag"

    invoke-interface {p2, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 241
    invoke-static {}, Lcom/tencent/mna/d;->H0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pvp"

    invoke-interface {p2, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 242
    invoke-static {}, Lcom/tencent/mna/d;->u1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "useping"

    invoke-interface {p2, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 243
    invoke-static {}, Lcom/tencent/mna/d;->n1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tos"

    invoke-interface {p2, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 244
    invoke-static {}, Lcom/tencent/mna/d;->p()Lcom/tencent/mna/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 245
    invoke-static {}, Lcom/tencent/mna/d;->p()Lcom/tencent/mna/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mna/c;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "control"

    invoke-interface {p2, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 250
    :cond_1
    sget-object p2, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->VPN_IP:Lcom/tencent/mna/base/report/a$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 252
    sget-object p1, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p2, Lcom/tencent/mna/base/report/a$a;->CTL_ERRORNO:Lcom/tencent/mna/base/report/a$a;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    if-nez p0, :cond_3

    .line 255
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->PLAT_FLAG:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/d;->h0()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 256
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->CONTROL_IP:Lcom/tencent/mna/base/report/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/mna/w;->k:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 257
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->EX_CLIENT_IP:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/d;->n()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 258
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->SPEED_IP:Lcom/tencent/mna/base/report/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/d;->a1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->b1()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 259
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->PVP:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/d;->H0()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 260
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->PRE_SMART:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/d;->X0()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 261
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->USEPING:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/d;->u1()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 262
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->TOS:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/d;->n1()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 263
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->FPSAPM:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/d;->O()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 264
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->PASTE:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/d;->q0()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 265
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->INTIMEFPS:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/d;->T()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 266
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->TRANSPORT:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/d;->o1()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 267
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->BIND_NET_TYPE:Lcom/tencent/mna/base/report/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/tencent/mna/t0;->h:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    sget-boolean v0, Lcom/tencent/mna/t0;->j:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    const-string v0, "0"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 269
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 271
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->ARP:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/d;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static a(JJLjava/lang/String;J)V
    .locals 10

    .line 320
    sget-object v1, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    .line 321
    new-instance v9, Lcom/tencent/mna/h$c;

    move-object v0, v9

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/tencent/mna/h$c;-><init>(Lcom/tencent/mna/j;JJLjava/lang/String;J)V

    invoke-static {v9}, Lcom/tencent/mna/a2;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/tencent/mna/StartSpeedRet;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[N]START_SPEED finish, errCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mna/StartSpeedRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/tencent/mna/b2;->g()Lcom/tencent/mna/MNAObserver;

    move-result-object v0

    .line 275
    :try_start_0
    new-instance v1, Lcom/tencent/mna/h$b;

    invoke-direct {v1, v0, p0}, Lcom/tencent/mna/h$b;-><init>(Lcom/tencent/mna/MNAObserver;Lcom/tencent/mna/StartSpeedRet;)V

    invoke-static {v1}, Lcom/tencent/mna/a2;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyStartSpeedResult exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    .line 299
    :goto_0
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->MNA_FLAG:Lcom/tencent/mna/base/report/a$a;

    iget p0, p0, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :cond_0
    const-string p0, "notifyStartSpeedResult NullPointer exception: startSpeedRet is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/base/report/a;I)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;I)V

    return-void
.end method

.method private static a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)V
    .locals 3

    const-string v0, "_"

    const-string v1, "[N]START_SPEED Compare delay finish, direct delay:"

    const-string v2, "[N]START_SPEED Compare delay finish, forward delay:"

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 302
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/tencent/mna/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-virtual {p2, v0}, Lcom/tencent/mna/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->SFORWARD:Lcom/tencent/mna/base/report/a$a;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    move-result-object p0

    sget-object p1, Lcom/tencent/mna/base/report/a$a;->SDIRECT:Lcom/tencent/mna/base/report/a$a;

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    const-string p0, "add Router Compare Report failed"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/c3$a;)V
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/c3$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/f;)V
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/f;)V

    return-void
.end method

.method private static a(Lcom/tencent/mna/base/report/a;Z)V
    .locals 4

    if-eqz p0, :cond_0

    .line 310
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v1

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    sget-object p1, Lcom/tencent/mna/base/report/a$a;->FRONTBACK:Lcom/tencent/mna/base/report/a$a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    const-string p0, "add FrontBack Report failed"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/y2;)V
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/y2;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/y2;ILjava/lang/String;I)V
    .locals 0

    .line 17
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/y2;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/tencent/mna/h;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;II)V
    .locals 3

    const-string/jumbo v0, "startTimerForStopMna() called with: startSpeedTimeoutMills = ["

    const-class v1, Lcom/tencent/mna/h;

    monitor-enter v1

    if-gtz p2, :cond_0

    .line 192
    :try_start_0
    const-string/jumbo p0, "startTimerForStopMna input warning: startSpeedTimeoutMills <= 0"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    .line 196
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/mna/h;->D()V

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 198
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/h;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 199
    new-instance v2, Lcom/tencent/mna/h$n;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mna/h$n;-><init>(Ljava/lang/String;I)V

    int-to-long p0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, p0, p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/tencent/mna/h;->h:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V
    .locals 11

    move-object v1, p0

    move v2, p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[N]vip = ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], vport["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], htype["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], hookModules = ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], zoneid["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], stopMNA["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], startSpeedTimeout["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], pvpid["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "], GameSetting.forceSpeed:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/tencent/mna/t0;->b:Z

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/tencent/mna/b2;->o()Z

    move-result v0

    const-string v9, "MNAStartSpeed fail"

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mna/a2;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lcom/tencent/mna/i;->c()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    .line 33
    invoke-static {v9}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 34
    new-instance v6, Lcom/tencent/mna/StartSpeedRet;

    invoke-static {v10}, Lcom/tencent/mna/StartSpeedRet;->getSpeedDesc(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/StartSpeedRet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-static {v6}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/StartSpeedRet;)V

    return-void

    .line 39
    :cond_1
    invoke-static {v10}, Lcom/tencent/mna/i;->b(Z)V

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Lcom/tencent/mna/i;->a(Z)V

    .line 43
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/tencent/mna/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    new-instance v9, Lcom/tencent/mna/h$g;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p7

    move v5, p4

    move-object v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/tencent/mna/h$g;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;II)V

    invoke-static {v9}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;)V

    return-void

    .line 45
    :cond_2
    :goto_0
    invoke-static {v9}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 46
    new-instance v6, Lcom/tencent/mna/StartSpeedRet;

    const/4 v0, -0x7

    invoke-static {v0}, Lcom/tencent/mna/StartSpeedRet;->getSpeedDesc(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/StartSpeedRet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-static {v6}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/StartSpeedRet;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 82
    new-instance p0, Lcom/tencent/mna/h$h;

    invoke-direct {p0, p2}, Lcom/tencent/mna/h$h;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    .line 107
    new-instance v0, Lcom/tencent/mna/h$l;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/tencent/mna/h$l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x6e

    invoke-static {p1, p0}, Lcom/tencent/mna/t3;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7

    .line 322
    new-instance v6, Lcom/tencent/mna/h$d;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/h$d;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-static {v6}, Lcom/tencent/mna/a2;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/h;->b(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 83
    new-instance v0, Lcom/tencent/mna/h$k;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/mna/h$k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;)V

    .line 106
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/t3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/tencent/mna/y2;II)Z
    .locals 6

    .line 47
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->a(Landroid/content/Context;)Lcom/tencent/mna/base/utils/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v1, v0, Lcom/tencent/mna/base/utils/c$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mna/n1;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v0, v0, Lcom/tencent/mna/base/utils/c$a;->b:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_0
    const-string v0, "0"

    :goto_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v3

    .line 55
    invoke-static {v2}, Lcom/tencent/mna/c3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tencent/mna/c3;->x:Ljava/lang/String;

    .line 56
    sput-object v2, Lcom/tencent/mna/c3;->C:Ljava/lang/String;

    .line 58
    new-instance v4, Lcom/tencent/mna/e$b;

    invoke-direct {v4}, Lcom/tencent/mna/e$b;-><init>()V

    invoke-virtual {v4, p1}, Lcom/tencent/mna/e$b;->d(I)Lcom/tencent/mna/e$b;

    move-result-object p1

    .line 59
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/tencent/mna/e$b;->i(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object p1

    sget-object v4, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 60
    invoke-virtual {p1, v4}, Lcom/tencent/mna/e$b;->e(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object p1

    .line 61
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/tencent/mna/e$b;->b(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object p1

    .line 62
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/tencent/mna/e$b;->d(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object p1

    .line 63
    invoke-virtual {p1, v2}, Lcom/tencent/mna/e$b;->c(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object p1

    sget-object v2, Lcom/tencent/mna/c3;->x:Ljava/lang/String;

    .line 64
    invoke-virtual {p1, v2}, Lcom/tencent/mna/e$b;->f(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object p1

    .line 65
    invoke-static {v1}, Lcom/tencent/mna/base/utils/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tencent/mna/e$b;->a(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object p1

    .line 66
    invoke-static {v1}, Lcom/tencent/mna/base/utils/WifiUtil;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/tencent/mna/e$b;->a(I)Lcom/tencent/mna/e$b;

    move-result-object p1

    .line 67
    invoke-static {v1}, Lcom/tencent/mna/base/utils/WifiUtil;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tencent/mna/e$b;->h(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object p1

    sget-object v2, Lcom/tencent/mna/t0;->t:Ljava/lang/String;

    .line 68
    invoke-virtual {p1, v2}, Lcom/tencent/mna/e$b;->g(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object p1

    .line 69
    invoke-virtual {p1, v3}, Lcom/tencent/mna/e$b;->b(I)Lcom/tencent/mna/e$b;

    move-result-object p1

    .line 70
    invoke-static {v1, v3}, Lcom/tencent/mna/base/utils/c;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tencent/mna/e$b;->c(I)Lcom/tencent/mna/e$b;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v0}, Lcom/tencent/mna/e$b;->j(Ljava/lang/String;)Lcom/tencent/mna/e$b;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/tencent/mna/e$b;->a()Lcom/tencent/mna/e;

    move-result-object p1

    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_1

    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_1

    .line 77
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/tencent/mna/d;->a(Ljava/lang/String;Lcom/tencent/mna/e;)I

    move-result v1

    move p2, v2

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    .line 81
    invoke-static {v1, v0, p0}, Lcom/tencent/mna/h;->a(ILjava/lang/String;Lcom/tencent/mna/y2;)V

    :cond_2
    if-nez v1, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method static synthetic a(Ljava/lang/String;I)Z
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/tencent/mna/h;->b(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic b(I)I
    .locals 0

    .line 4
    sput p0, Lcom/tencent/mna/h;->d:I

    return p0
.end method

.method private static b(IZLcom/tencent/mna/f1;Lcom/tencent/mna/j;)I
    .locals 0

    .line 264
    invoke-static {p0, p1}, Lcom/tencent/mna/h;->a(IZ)I

    move-result p0

    if-gez p0, :cond_0

    return p0

    .line 268
    :cond_0
    invoke-static {p2, p3}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/f1;Lcom/tencent/mna/j;)I

    move-result p0

    return p0
.end method

.method private static b(Lcom/tencent/mna/y2;Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)I
    .locals 18

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p7

    const-string v4, "[N]START_SPEED CHOOSE_PROTO: "

    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 6
    sput-wide v14, Lcom/tencent/mna/t0;->f:J

    if-lez v3, :cond_0

    move-object/from16 v13, p1

    .line 9
    invoke-static {v13, v0, v3}, Lcom/tencent/mna/h;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    .line 11
    :goto_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v16

    .line 13
    sget-object v5, Lcom/tencent/mna/base/report/d;->NORMAL:Lcom/tencent/mna/base/report/d;

    invoke-static {v5}, Lcom/tencent/mna/base/report/f;->a(Lcom/tencent/mna/base/report/d;)Lcom/tencent/mna/y2;

    move-result-object v5

    check-cast v5, Lcom/tencent/mna/base/report/a;

    sput-object v5, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    .line 15
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-static {}, Lcom/tencent/mna/w;->a()Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mna/base/utils/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->f()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v6, p8

    move-wide v11, v14

    move-object/from16 v13, v17

    .line 19
    invoke-virtual/range {v5 .. v13}, Lcom/tencent/mna/base/report/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 24
    invoke-static/range {v16 .. v16}, Lcom/tencent/mna/base/utils/c;->f(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, -0x2

    return v0

    .line 28
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/tencent/mna/h;->d(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v0, -0x6

    return v0

    :cond_2
    const/4 v5, 0x3

    move-object/from16 v6, p0

    move/from16 v7, p5

    .line 34
    invoke-static {v6, v7, v5}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/y2;II)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v0, -0x3

    return v0

    .line 41
    :cond_3
    new-instance v5, Lcom/tencent/mna/j;

    invoke-direct {v5}, Lcom/tencent/mna/j;-><init>()V

    sput-object v5, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    .line 44
    invoke-static {}, Lcom/tencent/mna/d;->h0()I

    move-result v5

    invoke-static {v5}, Lcom/tencent/mna/k2;->a(I)Lcom/tencent/mna/a1;

    move-result-object v5

    sput-object v5, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    .line 45
    sget-object v5, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    const/16 v6, -0x191

    if-nez v5, :cond_4

    .line 46
    const-string/jumbo v0, "startSpeed NullPointer exception: sAccelerator is null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return v6

    .line 49
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    invoke-interface {v4}, Lcom/tencent/mna/a1;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 52
    sget-object v4, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    .line 53
    invoke-static {}, Lcom/tencent/mna/d;->a1()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-static {}, Lcom/tencent/mna/d;->b1()I

    move-result v7

    .line 55
    invoke-static {}, Lcom/tencent/mna/d;->q()I

    move-result v8

    const/4 v9, 0x0

    .line 56
    invoke-interface {v4, v5, v7, v8, v9}, Lcom/tencent/mna/a1;->a(Ljava/lang/String;IILcom/tencent/mna/f1;)Lcom/tencent/mna/e1;

    move-result-object v4

    .line 61
    sget-object v5, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    invoke-interface {v5}, Lcom/tencent/mna/a1;->e()Lcom/tencent/mna/k;

    move-result-object v5

    if-eqz v4, :cond_15

    if-nez v5, :cond_5

    goto/16 :goto_5

    .line 67
    :cond_5
    sget-object v6, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    invoke-virtual {v6, v4}, Lcom/tencent/mna/j;->a(Lcom/tencent/mna/e1;)V

    .line 70
    invoke-static {}, Lcom/tencent/mna/g;->c()Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v0, -0xd

    return v0

    .line 75
    :cond_6
    invoke-static {}, Lcom/tencent/mna/d;->l0()Z

    move-result v4

    invoke-static {v4}, Lcom/tencent/mna/g;->a(Z)V

    .line 79
    invoke-static {}, Lcom/tencent/mna/d;->P0()I

    move-result v4

    const/4 v6, -0x5

    if-gtz v4, :cond_8

    .line 80
    invoke-static {}, Lcom/tencent/mna/d;->w1()I

    move-result v4

    if-nez v4, :cond_8

    .line 81
    invoke-static {}, Lcom/tencent/mna/d;->n1()I

    move-result v4

    if-lez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 83
    :cond_8
    :goto_1
    invoke-static {v1, v2, v5}, Lcom/tencent/mna/g;->a(ILjava/lang/String;Lcom/tencent/mna/k;)Z

    move-result v4

    if-nez v4, :cond_9

    return v6

    :cond_9
    const/4 v4, 0x1

    :goto_2
    const/4 v9, 0x2

    if-eqz p6, :cond_a

    return v9

    .line 96
    :cond_a
    sget-object v10, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v2, v11, v0}, Lcom/tencent/mna/a1;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, -0xc

    return v0

    .line 105
    :cond_b
    invoke-static {}, Lcom/tencent/mna/d;->k1()I

    move-result v0

    int-to-long v10, v0

    if-lez v3, :cond_c

    .line 107
    invoke-static {}, Lcom/tencent/mna/d;->Z0()I

    move-result v0

    if-lez v0, :cond_c

    .line 108
    invoke-static {}, Lcom/tencent/mna/d;->Z0()I

    move-result v0

    goto :goto_3

    :cond_c
    move v0, v3

    :goto_3
    if-lez v0, :cond_e

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    int-to-long v7, v0

    sub-long/2addr v12, v14

    sub-long/2addr v7, v12

    const-wide/16 v12, 0x3e8

    cmp-long v0, v7, v12

    if-lez v0, :cond_d

    const-wide/16 v12, 0x12c

    sub-long/2addr v7, v12

    cmp-long v0, v10, v7

    if-lez v0, :cond_e

    move-wide v10, v7

    goto :goto_4

    :cond_d
    const/16 v0, -0x9

    return v0

    .line 124
    :cond_e
    :goto_4
    invoke-static {}, Lcom/tencent/mna/d;->L()I

    move-result v0

    if-ne v0, v9, :cond_f

    const/16 v0, -0x10

    return v0

    .line 129
    :cond_f
    sget-boolean v0, Lcom/tencent/mna/t0;->b:Z

    if-nez v0, :cond_10

    .line 130
    invoke-static {}, Lcom/tencent/mna/d;->L()I

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    sget-object v3, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    .line 131
    invoke-static {v0, v3, v10, v11}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/j;Lcom/tencent/mna/base/report/a;J)I

    move-result v0

    if-gtz v0, :cond_10

    const/4 v0, -0x4

    return v0

    :cond_10
    if-nez v4, :cond_11

    .line 138
    invoke-static {v1, v2, v5}, Lcom/tencent/mna/g;->a(ILjava/lang/String;Lcom/tencent/mna/k;)Z

    move-result v0

    if-nez v0, :cond_11

    return v6

    .line 144
    :cond_11
    invoke-static {}, Lcom/tencent/mna/i;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 146
    invoke-static {}, Lcom/tencent/mna/d;->P0()I

    move-result v0

    if-gtz v0, :cond_12

    .line 148
    invoke-static {}, Lcom/tencent/mna/g;->f()Z

    :cond_12
    const/16 v0, -0xa

    return v0

    .line 153
    :cond_13
    invoke-static {}, Lcom/tencent/mna/d;->H1()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/tencent/mna/v;->a()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0xa

    return v0

    :cond_14
    const/4 v0, 0x1

    .line 157
    invoke-static {v0}, Lcom/tencent/mna/h;->f(Z)V

    const/4 v0, 0x0

    return v0

    .line 158
    :cond_15
    :goto_5
    const-string/jumbo v0, "startSpeed NullPointer exception: speedTester or udpPtr is null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    move-exception v0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startSpeed throwable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/16 v0, -0x193

    return v0

    :catch_0
    move-exception v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startSpeed exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/16 v0, -0x192

    return v0
.end method

.method static synthetic b()Lcom/tencent/mna/a1;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    return-object v0
.end method

.method private static b(ILcom/tencent/mna/j;Lcom/tencent/mna/base/report/a;)V
    .locals 8

    .line 373
    invoke-static {}, Lcom/tencent/mna/h;->C()V

    .line 375
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v1

    .line 377
    sget-object v2, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v3, Lcom/tencent/mna/base/report/a$a;->FIRST_NET:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 379
    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->a(Landroid/content/Context;)Lcom/tencent/mna/base/utils/c$a;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 380
    sget-object v2, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v3, Lcom/tencent/mna/base/report/a$a;->FIRST_DTTYPE:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/tencent/mna/d;->n0()I

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    invoke-static {}, Lcom/tencent/mna/c2;->a()Lcom/tencent/mna/c2$b;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/c2;->a(Lcom/tencent/mna/c2$b;)Ljava/lang/String;

    move-result-object v1

    .line 384
    sget-object v2, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v3, Lcom/tencent/mna/base/report/a$a;->FIRST_NIC:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v2, v3, v1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 387
    :cond_0
    invoke-static {v0}, Lcom/tencent/mna/base/utils/e;->g(Landroid/content/Context;)I

    move-result v0

    .line 388
    sget-object v1, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->BATTERY:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    .line 397
    :cond_1
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isRequestControlSucceed(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/tencent/mna/d;->x()I

    move-result p0

    if-eqz p0, :cond_2

    .line 399
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/d;->H0()I

    move-result p0

    const/4 v0, 0x1

    .line 400
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/h;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 401
    const-string v0, "startDelayTask"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 402
    sget-object v1, Lcom/tencent/mna/h;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/tencent/mna/g3;

    invoke-direct {v2, p1, p2}, Lcom/tencent/mna/g3;-><init>(Lcom/tencent/mna/j;Lcom/tencent/mna/base/report/a;)V

    int-to-long v5, p0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/tencent/mna/h;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "startDelayTask exception:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    .line 408
    :cond_3
    :goto_1
    const-string p0, "startDelayTask NullPointer exception: facade or reporter is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static b(ILjava/lang/String;)V
    .locals 6

    const-string v0, "prepareW2m success, usew2m:"

    const-string v1, "prepareW2m failed, in preparation, errno:"

    const-string v2, "prepareW2m failed, for switch close, useW2m:"

    .line 269
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isCanHook(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 271
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/d;->w1()I

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    invoke-static {}, Lcom/tencent/mna/d;->h0()I

    move-result v3

    const/4 v4, 0x4

    if-eq v4, v3, :cond_3

    .line 273
    invoke-static {}, Lcom/tencent/mna/d;->w1()I

    move-result v2

    const/4 v3, 0x2

    if-ne v3, v2, :cond_0

    .line 274
    invoke-static {}, Lcom/tencent/mna/y3;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 p0, -0xd

    .line 275
    sput p0, Lcom/tencent/mna/i;->g:I

    .line 276
    const-string p0, "prepareW2m failed, control but not vivo"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 279
    invoke-static {v2}, Lcom/tencent/mna/e2;->a(I)Lcom/tencent/mna/f1;

    move-result-object v2

    .line 281
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v3

    sget-boolean v4, Lcom/tencent/mna/t0;->y:Z

    .line 283
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isSpeedSucceed(I)Z

    move-result p0

    .line 284
    invoke-static {}, Lcom/tencent/mna/d;->A1()Z

    move-result v5

    .line 285
    invoke-interface {v2, v3, v4, p0, v5}, Lcom/tencent/mna/f1;->a(Landroid/content/Context;ZZZ)I

    move-result p0

    sput p0, Lcom/tencent/mna/i;->g:I

    .line 289
    sget p0, Lcom/tencent/mna/i;->g:I

    if-nez p0, :cond_2

    .line 290
    sput-object v2, Lcom/tencent/mna/h;->c:Lcom/tencent/mna/f1;

    .line 291
    sget-object p0, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    if-eqz p0, :cond_1

    .line 293
    sget-object p0, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    sget-object v1, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    sget-object v2, Lcom/tencent/mna/h;->c:Lcom/tencent/mna/f1;

    invoke-static {}, Lcom/tencent/mna/d;->A1()Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mna/j;->a(Lcom/tencent/mna/a1;Lcom/tencent/mna/f1;Z)V

    .line 295
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mna/d;->w1()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/tencent/mna/i;->g:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p0, -0x4

    .line 301
    sput p0, Lcom/tencent/mna/i;->g:I

    .line 302
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mna/d;->w1()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mna:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-static {}, Lcom/tencent/mna/d;->h0()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    .line 309
    :goto_0
    sget-object p0, Lcom/tencent/mna/h;->c:Lcom/tencent/mna/f1;

    if-nez p0, :cond_4

    sget-object p0, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    instance-of p0, p0, Lcom/tencent/mna/l3;

    if-eqz p0, :cond_7

    .line 312
    :cond_4
    sget-object p0, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    if-eqz p0, :cond_5

    .line 313
    sget-object p0, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    invoke-interface {p0}, Lcom/tencent/mna/a1;->e()Lcom/tencent/mna/k;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 315
    iget-wide v0, p0, Lcom/tencent/mna/k;->h:J

    goto :goto_1

    :cond_5
    const-wide/16 v0, 0x0

    .line 318
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/tencent/mna/g;->a(Ljava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_7

    .line 319
    const-string p0, "hookClose failed"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const/16 p1, -0x6d

    .line 323
    sput p1, Lcom/tencent/mna/i;->g:I

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "prepareW2m failed, exception:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 327
    :cond_6
    const-string p0, "prepareW2m failed, for control or hook"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    const/16 p0, -0x6c

    .line 328
    sput p0, Lcom/tencent/mna/i;->g:I

    :cond_7
    :goto_2
    return-void
.end method

.method public static b(IZ)V
    .locals 1

    .line 263
    new-instance v0, Lcom/tencent/mna/h$m;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mna/h$m;-><init>(IZ)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Lcom/tencent/mna/base/report/a;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 438
    :try_start_0
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->TOS_FLAG:Lcom/tencent/mna/base/report/a$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    const-string p0, "add Tos Report failed"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 409
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    const-string p0, "add String Report failed"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/c3$a;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 441
    :try_start_0
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->ROUT_AUTH:Lcom/tencent/mna/base/report/a$a;

    iget v1, p1, Lcom/tencent/mna/c3$a;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    move-result-object p0

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->ROUT_QOS:Lcom/tencent/mna/base/report/a$a;

    iget v1, p1, Lcom/tencent/mna/c3$a;->b:I

    .line 442
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    move-result-object p0

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->ROUT_MULTI:Lcom/tencent/mna/base/report/a$a;

    iget v1, p1, Lcom/tencent/mna/c3$a;->c:I

    .line 443
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    move-result-object p0

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->ROUT_RFLAG:Lcom/tencent/mna/base/report/a$a;

    iget v1, p1, Lcom/tencent/mna/c3$a;->d:I

    .line 444
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    move-result-object p0

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->ROUT_RVER:Lcom/tencent/mna/base/report/a$a;

    iget-object v1, p1, Lcom/tencent/mna/c3$a;->e:Ljava/lang/String;

    .line 445
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    move-result-object p0

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->ROUT_RPORT:Lcom/tencent/mna/base/report/a$a;

    iget p1, p1, Lcom/tencent/mna/c3$a;->f:I

    .line 446
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    const-string p0, "add Router Report failed"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/f;)V
    .locals 4

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 412
    :try_start_0
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->PLAT_REAL:Lcom/tencent/mna/base/report/a$a;

    iget v1, p1, Lcom/tencent/mna/f;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->MASTERIP:Lcom/tencent/mna/base/report/a$a;

    iget-object v2, p1, Lcom/tencent/mna/f;->b:Ljava/lang/String;

    .line 413
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->NEGIP:Lcom/tencent/mna/base/report/a$a;

    iget-object v2, p1, Lcom/tencent/mna/f;->c:Ljava/lang/String;

    .line 414
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->PROXYIPS:Lcom/tencent/mna/base/report/a$a;

    iget-object v2, p1, Lcom/tencent/mna/f;->d:Ljava/lang/String;

    .line 415
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->TOKEN:Lcom/tencent/mna/base/report/a$a;

    iget-object v2, p1, Lcom/tencent/mna/f;->h:Ljava/lang/String;

    .line 416
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->CLIENTKEY:Lcom/tencent/mna/base/report/a$a;

    iget-object v2, p1, Lcom/tencent/mna/f;->i:Ljava/lang/String;

    .line 417
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 418
    invoke-static {}, Lcom/tencent/mna/d;->h0()I

    move-result v0

    iget v1, p1, Lcom/tencent/mna/f;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "_"

    if-ne v0, v1, :cond_0

    .line 419
    :try_start_1
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->PREPARE:Lcom/tencent/mna/base/report/a$a;

    iget v1, p1, Lcom/tencent/mna/f;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    goto :goto_0

    .line 421
    :cond_0
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->PREPARE:Lcom/tencent/mna/base/report/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/tencent/mna/f;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/tencent/mna/f;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 423
    :goto_0
    iget-object v0, p1, Lcom/tencent/mna/f;->f:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    if-nez v0, :cond_1

    .line 424
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->EXPORTIP:Lcom/tencent/mna/base/report/a$a;

    iget-object v1, p1, Lcom/tencent/mna/f;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    goto :goto_1

    .line 426
    :cond_1
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->EXPORTIP:Lcom/tencent/mna/base/report/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/tencent/mna/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/tencent/mna/f;->f:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    iget v3, v3, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->isSameArea:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/tencent/mna/f;->f:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    iget v3, v3, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->isSameIsp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/mna/f;->f:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    iget v2, v2, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 433
    :goto_1
    iget-object v0, p1, Lcom/tencent/mna/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 434
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->EXTRASTATICS:Lcom/tencent/mna/base/report/a$a;

    iget-object p1, p1, Lcom/tencent/mna/f;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "add Plat Report failed, exception:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private static b(Lcom/tencent/mna/y2;)V
    .locals 12

    .line 329
    sget-object v0, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    if-nez v0, :cond_0

    .line 330
    const-string p0, "startCheckAllDelayAndMobileQos NullPointer exception: facade is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void

    .line 334
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    .line 337
    sget-object v1, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    if-eqz v1, :cond_1

    .line 338
    invoke-virtual {v1}, Lcom/tencent/mna/base/report/a;->k()Lcom/tencent/mna/a0;

    move-result-object v1

    .line 339
    sget-object v2, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    invoke-virtual {v2}, Lcom/tencent/mna/base/report/a;->j()Lcom/tencent/mna/a0;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 343
    invoke-virtual {v1}, Lcom/tencent/mna/a0;->d()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v2, :cond_2

    .line 344
    invoke-virtual {v2}, Lcom/tencent/mna/a0;->d()I

    move-result v3

    if-lez v3, :cond_2

    .line 345
    sget-object v6, Lcom/tencent/mna/j$c;->STAGE_CONTINUOUS_SPEED_TEST:Lcom/tencent/mna/j$c;

    .line 346
    sget-object v4, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    sget-object v5, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    .line 347
    invoke-virtual {v1}, Lcom/tencent/mna/a0;->e()I

    move-result v7

    invoke-virtual {v2}, Lcom/tencent/mna/a0;->e()I

    move-result v8

    .line 348
    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v9

    const/4 v10, -0x2

    const/4 v11, -0x1

    .line 349
    invoke-virtual/range {v4 .. v11}, Lcom/tencent/mna/j;->a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/j$c;IIIII)Lcom/tencent/mna/o1;

    move-result-object v0

    goto :goto_1

    .line 354
    :cond_2
    sget-object v2, Lcom/tencent/mna/j$c;->STAGE_NOT_CONTINUOUS_SPEED_TEST:Lcom/tencent/mna/j$c;

    .line 355
    sget-object v1, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    sget-object v3, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    .line 357
    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v5

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    move v4, v8

    .line 358
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mna/j;->a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/j$c;IIIII)Lcom/tencent/mna/o1;

    move-result-object v0

    .line 364
    :goto_1
    invoke-static {v0}, Lcom/tencent/mna/p2;->a(Lcom/tencent/mna/o1;)V

    .line 365
    sget-object v1, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    if-eqz v1, :cond_3

    .line 366
    sget-object v2, Lcom/tencent/mna/base/report/a$a;->QOSDELAY:Lcom/tencent/mna/base/report/a$a;

    iget v3, v0, Lcom/tencent/mna/o1;->k:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    :cond_3
    if-eqz p0, :cond_4

    .line 369
    const-string v1, "qosDelay"

    iget v0, v0, Lcom/tencent/mna/o1;->k:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startCheckAllDelayAndMobileQos exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static b(Lcom/tencent/mna/y2;ILjava/lang/String;I)V
    .locals 8

    if-eqz p0, :cond_2

    .line 449
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/tencent/mna/t0;->f:J

    sub-long/2addr v1, v3

    .line 452
    sget-object v3, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    if-eqz v3, :cond_1

    .line 453
    sget-object v3, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    invoke-interface {v3}, Lcom/tencent/mna/a1;->f()Lcom/tencent/mna/f;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 455
    iget-object v4, v3, Lcom/tencent/mna/f;->b:Ljava/lang/String;

    const-string v5, "masterip"

    invoke-interface {p0, v5, v4}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v4

    iget-object v5, v3, Lcom/tencent/mna/f;->c:Ljava/lang/String;

    .line 456
    const-string v6, "negip"

    invoke-interface {v4, v6, v5}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v4

    iget-object v5, v3, Lcom/tencent/mna/f;->d:Ljava/lang/String;

    .line 457
    const-string v6, "proxyips"

    invoke-interface {v4, v6, v5}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v4

    iget v5, v3, Lcom/tencent/mna/f;->g:I

    .line 458
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "prepare"

    invoke-interface {v4, v6, v5}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v4

    iget-object v5, v3, Lcom/tencent/mna/f;->h:Ljava/lang/String;

    .line 459
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "token"

    invoke-interface {v4, v6, v5}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object v4

    iget-object v5, v3, Lcom/tencent/mna/f;->i:Ljava/lang/String;

    .line 460
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "clientkey"

    invoke-interface {v4, v6, v5}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 461
    iget-object v4, v3, Lcom/tencent/mna/f;->f:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    const-string v5, "exportip"

    if-nez v4, :cond_0

    .line 462
    iget-object v3, v3, Lcom/tencent/mna/f;->e:Ljava/lang/String;

    invoke-interface {p0, v5, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    goto :goto_0

    .line 464
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/tencent/mna/f;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/tencent/mna/f;->f:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    iget v7, v7, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->isSameArea:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/tencent/mna/f;->f:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    iget v7, v7, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->isSameIsp:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/tencent/mna/f;->f:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    iget v3, v3, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->status:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v5, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 474
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    .line 475
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "flag"

    invoke-interface {p0, v4, p1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 476
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "devid"

    invoke-interface {p1, v5, v4}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 478
    invoke-static {v3}, Lcom/tencent/mna/base/utils/e;->a(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 479
    const-string v4, "devkey"

    invoke-interface {p1, v4, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 481
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "pvpid"

    invoke-interface {p1, v3, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 482
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v1, "elapse"

    invoke-interface {p1, v1, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    sget-object p2, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 483
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "openid"

    invoke-interface {p1, v1, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/t0;->f()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 487
    const-string v2, "game_ip"

    invoke-interface {p1, v2, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 490
    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result p2

    .line 491
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "netype"

    invoke-interface {p1, v2, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 494
    invoke-static {}, Lcom/tencent/mna/w;->a()Ljava/lang/String;

    move-result-object p2

    const-string v2, "mnaver"

    invoke-interface {p1, v2, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 497
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p2

    .line 498
    invoke-static {p2}, Lcom/tencent/mna/base/utils/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 499
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "gamever"

    invoke-interface {p1, v2, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    sget-object p2, Lcom/tencent/mna/m2;->n:Ljava/lang/String;

    .line 503
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "qos"

    invoke-interface {p1, v2, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    sget p2, Lcom/tencent/mna/m2;->o:I

    .line 504
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "QosModel"

    invoke-interface {p1, v2, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    sget-object p2, Lcom/tencent/mna/m2;->p:Ljava/lang/String;

    .line 505
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "qossid"

    invoke-interface {p1, v2, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    sget p2, Lcom/tencent/mna/m2;->l:I

    .line 506
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "qosworked"

    invoke-interface {p1, v2, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    sget-object p2, Lcom/tencent/mna/m2;->q:Ljava/lang/String;

    .line 507
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "qosip"

    invoke-interface {p1, v2, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 509
    invoke-static {v0}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "mac"

    invoke-interface {p1, v2, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 511
    invoke-static {v0}, Lcom/tencent/mna/base/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 512
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pcell"

    invoke-interface {p1, v0, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 514
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "tos_flag"

    invoke-interface {p1, p3, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 515
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->a()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "leftSpace"

    invoke-interface {p1, p3, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 516
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->h()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "totalSpace"

    invoke-interface {p1, p3, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    invoke-static {}, Lcom/tencent/mna/d;->y()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->z()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "diagnoseSpeed"

    invoke-interface {p1, p3, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    sget-object p2, Lcom/tencent/mna/base/utils/a;->d:Ljava/lang/String;

    .line 518
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "cpu_abi"

    invoke-interface {p1, p3, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 520
    invoke-interface {p0}, Lcom/tencent/mna/y2;->c()V

    goto :goto_1

    .line 522
    :cond_2
    const-string p0, "doStartPReport failed, reporter is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/tencent/mna/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    .line 523
    sget v0, Lcom/tencent/mna/h;->j:I

    invoke-static {}, Lcom/tencent/mna/d;->Y0()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 524
    sget v0, Lcom/tencent/mna/h;->j:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mna/h;->j:I

    .line 525
    sget v0, Lcom/tencent/mna/h;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mna/h;->k:I

    .line 526
    sget-object v0, Lcom/tencent/mna/base/report/d;->SMOBA_SPEED:Lcom/tencent/mna/base/report/d;

    invoke-static {v0}, Lcom/tencent/mna/base/report/f;->a(Lcom/tencent/mna/base/report/d;)Lcom/tencent/mna/y2;

    move-result-object v0

    .line 527
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 528
    const-string v2, "devid"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 529
    invoke-static {v1}, Lcom/tencent/mna/base/utils/e;->a(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "devkey"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 530
    invoke-static {}, Lcom/tencent/mna/d;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ex_client_ip"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 531
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "net"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 532
    invoke-static {}, Lcom/tencent/mna/w;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mnaver"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 534
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/utils/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gamever"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 537
    sget-object v1, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "openid"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 539
    invoke-static {}, Lcom/tencent/mna/d;->Y0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 540
    const-string v2, "smoba_speed_report"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 542
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ip_port_group"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "speed_time"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 544
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "tag"

    invoke-interface {v0, v1, p0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 545
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "interval"

    invoke-interface {v0, p2, p0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 546
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "pkg_timeout"

    invoke-interface {v0, p2, p0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 547
    sget p0, Lcom/tencent/mna/h;->j:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "count_before_pvp"

    invoke-interface {v0, p2, p0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 548
    sget p0, Lcom/tencent/mna/h;->k:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "count_total"

    invoke-interface {v0, p2, p0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 549
    sget-wide p2, Lcom/tencent/mna/h;->l:J

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p2, "init_time"

    invoke-interface {v0, p2, p0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 551
    invoke-static {p1, p4}, Lcom/tencent/mna/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "speed_detail"

    invoke-interface {v0, p1, p0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 552
    invoke-interface {v0}, Lcom/tencent/mna/y2;->c()V

    goto :goto_0

    .line 554
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ino_smoba_speed_p count:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Lcom/tencent/mna/h;->j:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceed control max "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-static {}, Lcom/tencent/mna/d;->Y0()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 556
    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Z)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/tencent/mna/h;->c(Z)V

    return-void
.end method

.method private static b(Ljava/lang/String;I)Z
    .locals 1

    .line 261
    invoke-static {p0}, Lcom/tencent/mna/n1;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 262
    invoke-static {}, Lcom/tencent/mna/t0;->f()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/String;I)Lcom/tencent/mna/j3;
    .locals 0

    .line 2
    new-instance p0, Lcom/tencent/mna/j3;

    invoke-direct {p0}, Lcom/tencent/mna/j3;-><init>()V

    return-object p0
.end method

.method private static c(I)V
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isSpeedSucceed(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isNegotiateForwardTunnelSucceed(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    sget-object p0, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    if-eqz p0, :cond_0

    .line 7
    :try_start_0
    sget-object p0, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    invoke-interface {p0}, Lcom/tencent/mna/a1;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maybeReleaseForwardTunnel exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "maybeReleaseForwardTunnel NullPointer exception: sAccelerator is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(ILjava/lang/String;)V
    .locals 3

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 109
    new-instance v2, Lcom/tencent/mna/h$e;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/tencent/mna/h$e;-><init>(ILjava/lang/String;J)V

    invoke-static {v2}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 7

    .line 13
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    if-eqz v0, :cond_8

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 16
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->GAMEEXTRA:Lcom/tencent/mna/base/report/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->GAMEEXTRA:Lcom/tencent/mna/base/report/a$a;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 22
    :goto_0
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->QOS:Lcom/tencent/mna/base/report/a$a;

    sget-object v1, Lcom/tencent/mna/m2;->n:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 23
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->QOSMODEL:Lcom/tencent/mna/base/report/a$a;

    sget v1, Lcom/tencent/mna/m2;->o:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 24
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->QOSSID:Lcom/tencent/mna/base/report/a$a;

    sget-object v1, Lcom/tencent/mna/m2;->p:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 25
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->QOSWORKED:Lcom/tencent/mna/base/report/a$a;

    sget v1, Lcom/tencent/mna/m2;->l:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 26
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->QOSIP:Lcom/tencent/mna/base/report/a$a;

    sget-object v1, Lcom/tencent/mna/m2;->q:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    .line 30
    sget-object v1, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->END_NET:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/tencent/mna/d;->n0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 32
    invoke-static {}, Lcom/tencent/mna/c2;->a()Lcom/tencent/mna/c2$b;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/c2;->a(Lcom/tencent/mna/c2$b;)Ljava/lang/String;

    move-result-object v0

    .line 33
    sget-object v2, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v3, Lcom/tencent/mna/base/report/a$a;->END_NIC:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v2, v3, v0}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 35
    :cond_1
    new-instance v0, Lcom/tencent/mna/w0$a;

    invoke-direct {v0}, Lcom/tencent/mna/w0$a;-><init>()V

    .line 36
    invoke-static {}, Lcom/tencent/mna/d;->R()I

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/w0;->a(Landroid/content/Context;)Lcom/tencent/mna/w0$a;

    move-result-object v0

    .line 40
    :cond_2
    sget-object v2, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v3, Lcom/tencent/mna/base/report/a$a;->END_HWR_MARKER:Lcom/tencent/mna/base/report/a$a;

    iget v4, v0, Lcom/tencent/mna/w0$a;->a:I

    .line 41
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-static {v2, v3, v4}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 44
    sget-object v2, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v3, Lcom/tencent/mna/base/report/a$a;->END_HWR_INFO:Lcom/tencent/mna/base/report/a$a;

    .line 45
    invoke-virtual {v0}, Lcom/tencent/mna/w0$a;->a()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-static {v2, v3, v4}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/tencent/mna/d;->S()I

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    iget v0, v0, Lcom/tencent/mna/w0$a;->a:I

    const-string/jumbo v3, "stop"

    invoke-static {v2, v0, v3}, Lcom/tencent/mna/w0;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    const v0, -0xbdb29

    .line 54
    :goto_1
    sget-object v2, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v3, Lcom/tencent/mna/base/report/a$a;->HWR_LOGS:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->h(Landroid/content/Context;)[I

    move-result-object v0

    if-eqz v0, :cond_4

    .line 57
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    const/4 v2, 0x0

    .line 58
    aget v2, v0, v2

    .line 59
    aget v0, v0, v1

    .line 60
    sget-object v3, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v4, Lcom/tencent/mna/base/report/a$a;->BATTERY:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 61
    sget-object v2, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 64
    :cond_4
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->ZONEID:Lcom/tencent/mna/base/report/a$a;

    sget v3, Lcom/tencent/mna/t0;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->ALL_MEMORY:Lcom/tencent/mna/base/report/a$a;

    invoke-static {p0}, Lcom/tencent/mna/base/utils/d;->e(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->LEFTSPACE:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/base/utils/d;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->TOTALSPACE:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/base/utils/d;->h()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 69
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->e(Landroid/content/Context;)I

    move-result v2

    .line 71
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    sget-object v2, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v3, Lcom/tencent/mna/base/report/a$a;->WMAC:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v2, v3, v0}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->PCELL:Lcom/tencent/mna/base/report/a$a;

    invoke-static {p0}, Lcom/tencent/mna/base/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->LBS:Lcom/tencent/mna/base/report/a$a;

    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->b(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "1"

    const-string v5, "0"

    if-eqz v3, :cond_5

    move-object v3, v4

    goto :goto_2

    :cond_5
    move-object v3, v5

    :goto_2
    invoke-static {v0, v2, v3}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->END_GPS_LON:Lcom/tencent/mna/base/report/a$a;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v6}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->END_GPS_LAT:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->INNERIP:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->USERID:Lcom/tencent/mna/base/report/a$a;

    sget-object v2, Lcom/tencent/mna/t0;->w:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->EMULATOR:Lcom/tencent/mna/base/report/a$a;

    invoke-static {}, Lcom/tencent/mna/base/utils/e;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v5

    :goto_3
    invoke-static {v0, v1, v4}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 85
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->a(Landroid/content/Context;)Lcom/tencent/mna/base/utils/c$a;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 87
    iget-object v0, p0, Lcom/tencent/mna/base/utils/c$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/n1;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    iget-object v5, p0, Lcom/tencent/mna/base/utils/c$a;->b:Ljava/lang/String;

    .line 90
    :cond_7
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->LAST_VPN_IP:Lcom/tencent/mna/base/report/a$a;

    .line 91
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {p0, v0, v1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 95
    sget-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->GAME_LOCAL_IP:Lcom/tencent/mna/base/report/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/mna/t0;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/tencent/mna/t0;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    goto :goto_4

    .line 98
    :cond_8
    const-string p0, "doNormalPReport failed, reporter is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private static declared-synchronized c(Z)V
    .locals 2

    const-class v0, Lcom/tencent/mna/h;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/tencent/mna/base/report/a;->c()V

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 104
    sput-object p0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    goto :goto_0

    .line 107
    :cond_0
    const-string p0, "doNormalPReport failed, reporter is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic c()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/h;->v()Z

    move-result v0

    return v0
.end method

.method private static d(Z)Ljava/lang/String;
    .locals 5

    .line 76
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v2, "game_ip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/mna/t0;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/t0;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v2, "pvpid"

    sget-object v3, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v2, "openid"

    sget-object v3, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v2, "userid"

    sget-object v3, Lcom/tencent/mna/t0;->w:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v2, "fpsapm"

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/mna/d;->O()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string p0, "gameextra"

    sget-object v2, Lcom/tencent/mna/t0;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string p0, "devid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string p0, "devkey"

    invoke-static {v1}, Lcom/tencent/mna/base/utils/e;->a(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    const-string p0, "gamever"

    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/utils/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/mna/h;->A()V

    return-void
.end method

.method private static d(I)V
    .locals 1

    .line 3
    sput p0, Lcom/tencent/mna/i;->f:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/jni/e;->f()V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lcom/tencent/mna/base/jni/e;->e()V

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Lcom/tencent/mna/base/jni/e;->d()V

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/tencent/mna/t0;->f()I

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/mna/h;->e(Ljava/lang/String;I)V

    return-void
.end method

.method public static d(Ljava/lang/String;I)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 22
    array-length v4, v3

    const/4 v6, 0x2

    if-lt v4, v6, :cond_3

    .line 23
    aget-object v1, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/tencent/mna/n1;->l(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 26
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_1
    aget-object v4, v3, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 29
    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/t0;->a(Ljava/lang/String;)V

    move-object v3, v1

    move-object v1, v4

    goto :goto_0

    .line 32
    :cond_2
    invoke-static {v1}, Lcom/tencent/mna/t0;->a(Ljava/lang/String;)V

    .line 35
    :cond_3
    const-string v3, ""

    :goto_0
    invoke-static {v1}, Lcom/tencent/mna/n1;->l(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 37
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 39
    :cond_4
    invoke-static {v1}, Lcom/tencent/mna/n1;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 43
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mna/t0;->b(Ljava/lang/String;)V

    .line 52
    invoke-static {v2}, Lcom/tencent/mna/t0;->a(Ljava/util/List;)V

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->a([Ljava/lang/String;)V

    if-lez p1, :cond_7

    .line 57
    invoke-static {p1}, Lcom/tencent/mna/t0;->b(I)V

    .line 58
    invoke-static {p1}, Lcom/tencent/mna/base/jni/e;->e(I)V

    .line 62
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v3, Lcom/tencent/mna/t0;->f:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    .line 63
    sget-object v3, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    sget-object v4, Lcom/tencent/mna/base/report/a$a;->GAME_IP:Lcom/tencent/mna/base/report/a$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {}, Lcom/tencent/mna/t0;->f()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v3, v4, v0}, Lcom/tencent/mna/h;->b(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[N]START_SPEED GAME_VIP DNS success, domain:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] to ip:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", vport:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return v5

    .line 74
    :cond_8
    const-string p0, "[N]START_SPEED GAME_VIP DNS fail"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    return v0

    .line 75
    :cond_9
    :goto_3
    const-string p0, "[N]START_SPEED GAME_VIP DNS failed, for input is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    return v0
.end method

.method static synthetic e()Lcom/tencent/mna/f1;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/h;->c:Lcom/tencent/mna/f1;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 8

    .line 4
    const-string/jumbo v0, "|"

    .line 0
    const-string/jumbo v1, "ue4 startFps, fps interval:"

    const-string v2, ""

    .line 4
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/n0;->b()I

    move-result v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mna/d;->S0()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->g0()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->N()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->a()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7
    const-string p0, "com.unity3d.player.UnityPlayer"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 8
    const-string v1, "UnitySendMessage"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    aput-object v5, v3, v4

    const/4 v7, 0x2

    aput-object v5, v3, v7

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 9
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "MnaCallBackGameObejct"

    aput-object v2, v1, v6

    const-string v2, "MnaListenerInit"

    aput-object v2, v1, v4

    aput-object v0, v1, v7

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-ne v3, v2, :cond_1

    .line 12
    invoke-static {}, Lcom/tencent/mna/d;->N()I

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/mna/g;->a(Ljava/lang/String;I)Z

    move-result p0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mna/d;->N()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", res:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;I)V
    .locals 2

    .line 3
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/mna/h;->a(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static e(Z)V
    .locals 0

    .line 2
    sput-boolean p0, Lcom/tencent/mna/t0;->y:Z

    return-void
.end method

.method static synthetic f()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/mna/h;->j()V

    return-void
.end method

.method public static f(Ljava/lang/String;I)V
    .locals 1

    const/4 p0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/h;->f(Z)V

    const/4 p0, 0x1

    .line 4
    invoke-static {p0}, Lcom/tencent/mna/i;->a(Z)V

    .line 5
    sget-object p0, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    if-eqz p0, :cond_0

    .line 6
    new-instance p0, Lcom/tencent/mna/h$j;

    invoke-direct {p0}, Lcom/tencent/mna/h$j;-><init>()V

    invoke-static {p0}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo p0, "stopMNA no need to end accelerator, which is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 21
    :goto_0
    const-string p0, "[N]MNAStopMNA succeed"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[N]MNAStopMNA fail, exception:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static f(Z)V
    .locals 0

    .line 24
    sput-boolean p0, Lcom/tencent/mna/i;->e:Z

    .line 25
    invoke-static {p0}, Lcom/tencent/mna/base/jni/e;->d(Z)V

    return-void
.end method

.method public static declared-synchronized g(Z)I
    .locals 2

    const-class v0, Lcom/tencent/mna/h;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/mna/h;->c:Lcom/tencent/mna/f1;

    if-eqz v1, :cond_2

    .line 12
    sget-object v1, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    if-eqz v1, :cond_0

    .line 14
    sget-object v1, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    invoke-virtual {v1, p0}, Lcom/tencent/mna/j;->a(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/16 p0, -0xb

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 20
    :try_start_1
    invoke-static {p0}, Lcom/tencent/mna/h;->d(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :cond_1
    const/4 p0, 0x2

    .line 23
    :try_start_2
    invoke-static {p0}, Lcom/tencent/mna/h;->d(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 27
    :cond_2
    :try_start_3
    sget p0, Lcom/tencent/mna/i;->g:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catch_0
    monitor-exit v0

    const/16 p0, -0xc

    return p0
.end method

.method static synthetic g()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/mna/h;->D()V

    return-void
.end method

.method static synthetic h()Lcom/tencent/mna/base/report/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    return-object v0
.end method

.method static synthetic i()Lcom/tencent/mna/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    return-object v0
.end method

.method private static j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/tencent/mna/h;->f(Z)V

    .line 2
    invoke-static {v0}, Lcom/tencent/mna/h;->d(I)V

    .line 3
    invoke-static {}, Lcom/tencent/mna/i;->a()V

    .line 4
    invoke-static {}, Lcom/tencent/mna/g;->a()V

    .line 5
    invoke-static {}, Lcom/tencent/mna/r3;->a()V

    .line 8
    invoke-static {}, Lcom/tencent/mna/t0;->a()V

    .line 10
    invoke-static {}, Lcom/tencent/mna/base/jni/e;->a()V

    .line 12
    invoke-static {}, Lcom/tencent/mna/c3;->b()V

    .line 14
    invoke-static {}, Lcom/tencent/mna/m2;->j()V

    .line 15
    invoke-static {}, Lcom/tencent/mna/h;->k()V

    return-void
.end method

.method private static k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Lcom/tencent/mna/h;->j:I

    return-void
.end method

.method private static l()Lcom/tencent/mna/h1;
    .locals 9

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->h0()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/tencent/mna/d;->G1()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {}, Lcom/tencent/mna/d;->X0()I

    move-result v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "START_SPEED createSpeedComparator mna:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", xmlVer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", smart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 7
    new-instance v0, Lcom/tencent/mna/j0;

    invoke-static {}, Lcom/tencent/mna/d;->E()I

    move-result v1

    invoke-static {}, Lcom/tencent/mna/d;->F()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mna/j0;-><init>(II)V

    return-object v0

    :cond_0
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    if-eqz v0, :cond_4

    .line 15
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    .line 16
    sget-object v3, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    invoke-interface {v3}, Lcom/tencent/mna/a1;->g()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x3

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_2

    .line 19
    :cond_1
    const-string v0, "[N]START_SPEED LR-WiFi algorithm to decide whether speed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/tencent/mna/r1;

    sget-object v2, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    sget-object v3, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    .line 21
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mna/d;->a1()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tencent/mna/r1;-><init>(Lcom/tencent/mna/j;Lcom/tencent/mna/base/report/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_2
    if-ne v0, v3, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    if-ne v1, v3, :cond_4

    .line 23
    :cond_3
    const-string v0, "[N]START_SPEED LR-4G algorithm to decide whether speed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/tencent/mna/r1;

    sget-object v2, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    sget-object v3, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    .line 25
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mna/d;->a1()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/tencent/mna/r1;-><init>(Lcom/tencent/mna/j;Lcom/tencent/mna/base/report/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 28
    :cond_4
    const-string v0, "[N]START_SPEED Common algorithm to decide whether speed"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/tencent/mna/u;

    invoke-static {}, Lcom/tencent/mna/d;->u()I

    move-result v2

    invoke-static {}, Lcom/tencent/mna/d;->w()I

    move-result v3

    .line 31
    invoke-static {}, Lcom/tencent/mna/d;->v()I

    move-result v4

    invoke-static {}, Lcom/tencent/mna/d;->R0()I

    move-result v5

    .line 32
    invoke-static {}, Lcom/tencent/mna/d;->m1()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mna/u;-><init>(IIIII)V

    return-object v0
.end method

.method public static m()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 4
    :try_start_0
    invoke-static {v2}, Lcom/tencent/mna/base/jni/e;->c(Z)V

    .line 6
    const-string v2, ""

    const/16 v3, 0x68

    invoke-static {v3, v2}, Lcom/tencent/mna/t3;->a(ILjava/lang/String;)V

    .line 7
    const-string v2, "MNAEnterMapLoading succeed"

    invoke-static {v2}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MNAEnterMapLoading fail, exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 11
    :goto_0
    new-instance v2, Lcom/tencent/mna/h$i;

    invoke-direct {v2, v0, v1}, Lcom/tencent/mna/h$i;-><init>(J)V

    invoke-static {v2}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static n()Lcom/tencent/mna/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/h;->b:Lcom/tencent/mna/j;

    return-object v0
.end method

.method public static o()Lcom/tencent/mna/a1;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    return-object v0
.end method

.method public static p()Lcom/tencent/mna/f1;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    instance-of v0, v0, Lcom/tencent/mna/x1;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/mna/h;->a:Lcom/tencent/mna/a1;

    check-cast v0, Lcom/tencent/mna/x1;

    invoke-virtual {v0}, Lcom/tencent/mna/x1;->i()Lcom/tencent/mna/f1;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/tencent/mna/h;->c:Lcom/tencent/mna/f1;

    return-object v0
.end method

.method public static q()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/i;->f:I

    return v0
.end method

.method public static r()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/h;->d:I

    return v0
.end method

.method public static s()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/tencent/mna/i;->c:Z

    .line 2
    sget-object v1, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    invoke-static {v1, v0}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/base/report/a;Z)V

    const/16 v0, 0x6a

    .line 4
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mna/t3;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static t()V
    .locals 9

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/tencent/mna/i;->c:Z

    .line 2
    sget-object v1, Lcom/tencent/mna/h;->i:Lcom/tencent/mna/base/report/a;

    invoke-static {v1, v0}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/base/report/a;Z)V

    .line 4
    const-string v0, ""

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    :try_start_0
    const-string/jumbo v2, "userid"

    sget-object v3, Lcom/tencent/mna/t0;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v2, "openid"

    sget-object v3, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string/jumbo v2, "zoneid"

    sget v3, Lcom/tencent/mna/t0;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    const-string v2, "borntime"

    sget-wide v3, Lcom/tencent/mna/t0;->g:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    sget-wide v2, Lcom/tencent/mna/t0;->f:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    const-string v6, "pvpid"

    const-string v7, "game_ip"

    cmp-long v8, v2, v4

    if-eqz v8, :cond_0

    .line 12
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/t0;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    sget-object v2, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/16 v1, 0x69

    .line 21
    invoke-static {v1, v0}, Lcom/tencent/mna/t3;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static u()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/mna/h$f;

    invoke-direct {v0}, Lcom/tencent/mna/h$f;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static v()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/h;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mna/h;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mna/h;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static w()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/mna/i;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tencent/mna/i;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static x()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/mna/i;->e:Z

    return v0
.end method

.method public static y()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mna/base/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static z()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/tencent/mna/i;->d:Z

    .line 2
    sget-boolean v1, Lcom/tencent/mna/t0;->y:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/tencent/mna/n;->c(Z)V

    :cond_0
    return-void
.end method
