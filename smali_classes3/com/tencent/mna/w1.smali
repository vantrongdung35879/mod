.class public Lcom/tencent/mna/w1;
.super Ljava/lang/Object;
.source "LossRateCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/w1$d;,
        Lcom/tencent/mna/w1$c;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/mna/w1$d;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Vector; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Vector; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/tencent/mna/w1$d;",
            ">;"
        }
    .end annotation
.end field

.field private static d:I = 0x0

.field private static e:I = 0x0

.field private static f:Ljava/lang/String; = null

.field private static g:I = 0x0

.field private static h:I = 0x0

.field private static i:I = 0x0

.field private static j:I = 0x0

.field private static k:I = 0x0

.field private static l:Z = false

.field private static final m:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/mna/w1;->m:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/w1;->e:I

    return v0
.end method

.method public static a(II)V
    .locals 9

    .line 31
    sget-boolean v0, Lcom/tencent/mna/w1;->l:Z

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/tencent/mna/w1;->c:Ljava/util/Vector;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/tencent/mna/w1;->c:Ljava/util/Vector;

    new-instance v8, Lcom/tencent/mna/w1$d;

    int-to-long v6, p1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    move v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/mna/w1$d;-><init>(IIIJ)V

    invoke-virtual {v1, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 34
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(IIIJ)V
    .locals 8

    .line 27
    sget v0, Lcom/tencent/mna/w1;->e:I

    if-ne p0, v0, :cond_0

    .line 28
    sget-object p0, Lcom/tencent/mna/w1;->a:Ljava/util/Set;

    monitor-enter p0

    .line 29
    :try_start_0
    sget-object v0, Lcom/tencent/mna/w1;->a:Ljava/util/Set;

    new-instance v7, Lcom/tencent/mna/w1$d;

    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v2

    move-object v1, v7

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mna/w1$d;-><init>(IIIJ)V

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(IIJ)V
    .locals 0

    .line 23
    sget p1, Lcom/tencent/mna/w1;->e:I

    if-ne p0, p1, :cond_0

    .line 24
    sget-object p0, Lcom/tencent/mna/w1;->b:Ljava/util/Vector;

    monitor-enter p0

    .line 25
    :try_start_0
    sget-object p1, Lcom/tencent/mna/w1;->b:Ljava/util/Vector;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;IIIIIFIIIII)Z
    .locals 4

    .line 2
    const-string/jumbo v1, "startUdpLoop release lock"

    sget-object v0, Lcom/tencent/mna/w1;->m:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3
    const-string/jumbo v0, "startUdpLoop get lock fail"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return v3

    .line 7
    :cond_0
    :try_start_0
    const-string/jumbo v2, "startUdpLoop get lock success"

    invoke-static {v2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 8
    invoke-static/range {p0 .. p13}, Lcom/tencent/mna/w1;->b(Ljava/lang/String;ILjava/lang/String;IIIIIFIIIII)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 15
    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    sget-object v0, Lcom/tencent/mna/w1;->m:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return v3

    .line 20
    :goto_0
    sget-object v2, Lcom/tencent/mna/w1;->m:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 22
    throw v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/w1;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;ILjava/lang/String;IIIIIFIIIII)Z
    .locals 1

    .line 2
    const-string/jumbo v0, "startUdpLoopInner"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/mna/w1;->a:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/tencent/mna/w1;->b:Ljava/util/Vector;

    .line 5
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/tencent/mna/w1;->c:Ljava/util/Vector;

    .line 7
    sput-object p2, Lcom/tencent/mna/w1;->f:Ljava/lang/String;

    .line 8
    sput p3, Lcom/tencent/mna/w1;->g:I

    .line 9
    sput p4, Lcom/tencent/mna/w1;->d:I

    const/16 p2, 0x1f4

    .line 10
    invoke-static {p2}, Lcom/tencent/mna/base/jni/e;->d(I)I

    move-result p2

    sput p2, Lcom/tencent/mna/w1;->e:I

    .line 11
    sput p9, Lcom/tencent/mna/w1;->h:I

    .line 12
    sput p11, Lcom/tencent/mna/w1;->i:I

    .line 13
    sput p12, Lcom/tencent/mna/w1;->j:I

    .line 14
    sput p13, Lcom/tencent/mna/w1;->k:I

    .line 16
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 18
    :try_start_0
    const-string p3, "pushTimes"

    invoke-virtual {p2, p3, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    const-string p3, "pushLen"

    invoke-virtual {p2, p3, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string p3, "pushInterval"

    float-to-double p7, p8

    invoke-virtual {p2, p3, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 21
    const-string p3, "pushIsDouble"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "LOSS_RATE_COUNTER config: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 28
    sget p3, Lcom/tencent/mna/w1;->e:I

    invoke-static {p0}, Lcom/tencent/mna/n1;->h(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p0, p1, p2}, Lcom/tencent/mna/base/jni/e;->a(I[BILjava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/tencent/mna/w1;->l:Z

    const/4 p0, 0x2

    .line 30
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    .line 31
    const-string p1, "LOSS_RATE_COUNTER start send and recv"

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 32
    new-instance p1, Lcom/tencent/mna/w1$a;

    invoke-direct {p1, p5, p6, p10}, Lcom/tencent/mna/w1$a;-><init>(III)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 44
    new-instance p1, Lcom/tencent/mna/w1$b;

    invoke-direct {p1, p10}, Lcom/tencent/mna/w1$b;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit16 p10, p10, 0x3e8

    int-to-long p1, p10

    .line 57
    :try_start_1
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_0

    .line 60
    :try_start_2
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 67
    :catch_1
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic c()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/w1;->g:I

    return v0
.end method

.method static synthetic d()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/w1;->d:I

    return v0
.end method

.method public static e()Lcom/tencent/mna/w1$c;
    .locals 23

    .line 1
    const-string v0, ";"

    new-instance v8, Lcom/tencent/mna/w1$c;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const-wide/16 v2, -0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/tencent/mna/w1$c;-><init>(JJJ)V

    .line 3
    sget-object v1, Lcom/tencent/mna/w1;->m:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    const-string v0, "getDgnData get lock fail"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-object v8

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/mna/w1;->b:Ljava/util/Vector;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_15

    sget-object v1, Lcom/tencent/mna/w1;->a:Ljava/util/Set;

    if-eqz v1, :cond_15

    .line 18
    sget-object v1, Lcom/tencent/mna/w1;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 19
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 22
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 25
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 29
    :cond_1
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 30
    sget-object v6, Lcom/tencent/mna/w1;->a:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x2c

    if-lez v6, :cond_4

    .line 35
    sget-object v6, Lcom/tencent/mna/w1;->a:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tencent/mna/w1$d;

    .line 36
    iget v14, v13, Lcom/tencent/mna/w1$d;->b:I

    if-lt v14, v1, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v16, v5

    .line 41
    iget-wide v4, v13, Lcom/tencent/mna/w1$d;->c:J

    sget-object v11, Lcom/tencent/mna/w1;->b:Ljava/util/Vector;

    invoke-virtual {v11, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v4, v4, v17

    long-to-int v5, v4

    const/16 v4, 0x1f4

    if-le v5, v4, :cond_3

    add-int/lit16 v12, v12, 0x1f4

    .line 44
    const-string v4, "500,"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    add-int/2addr v12, v5

    .line 47
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    :goto_2
    new-instance v4, Lcom/tencent/mna/w1$d;

    iget v11, v13, Lcom/tencent/mna/w1$d;->a:I

    iget v14, v13, Lcom/tencent/mna/w1$d;->b:I

    iget v15, v13, Lcom/tencent/mna/w1$d;->d:I

    move/from16 v18, v11

    int-to-long v10, v15

    move-object/from16 v17, v4

    move/from16 v19, v14

    move/from16 v20, v5

    move-wide/from16 v21, v10

    invoke-direct/range {v17 .. v22}, Lcom/tencent/mna/w1$d;-><init>(IIIJ)V

    move-object/from16 v5, v16

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 51
    iget v4, v13, Lcom/tencent/mna/w1$d;->b:I

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v10}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x2c

    goto :goto_1

    :cond_4
    const/4 v12, -0x1

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_7

    .line 63
    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    if-lez v1, :cond_8

    .line 67
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 69
    :cond_8
    sget v3, Lcom/tencent/mna/w1;->h:I

    .line 70
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 71
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v3, :cond_9

    .line 73
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 75
    :cond_9
    sget-object v10, Lcom/tencent/mna/w1;->c:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tencent/mna/w1$d;

    .line 76
    iget v13, v11, Lcom/tencent/mna/w1$d;->d:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_a

    iget v13, v11, Lcom/tencent/mna/w1$d;->b:I

    invoke-virtual {v6, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    :cond_a
    iget v11, v11, Lcom/tencent/mna/w1$d;->b:I

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v11, v13}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v3, :cond_d

    .line 83
    invoke-virtual {v6, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_c

    .line 84
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v11, 0x2c

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_c
    const/16 v11, 0x2c

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 90
    :cond_d
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_8
    if-ge v11, v3, :cond_11

    add-int/lit8 v13, v11, -0x1

    .line 92
    invoke-virtual {v5, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tencent/mna/w1$d;

    .line 93
    invoke-virtual {v5, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tencent/mna/w1$d;

    .line 94
    iget v15, v14, Lcom/tencent/mna/w1$d;->b:I

    move/from16 v16, v3

    iget v3, v13, Lcom/tencent/mna/w1$d;->b:I

    add-int/2addr v3, v6

    if-ne v15, v3, :cond_f

    .line 95
    iget-wide v14, v14, Lcom/tencent/mna/w1$d;->c:J

    sget v3, Lcom/tencent/mna/w1;->j:I

    move-object/from16 v17, v7

    int-to-long v6, v3

    cmp-long v3, v14, v6

    if-lez v3, :cond_e

    iget-wide v6, v13, Lcom/tencent/mna/w1$d;->c:J

    sget v3, Lcom/tencent/mna/w1;->i:I

    move-object v13, v0

    move/from16 v19, v1

    int-to-long v0, v3

    cmp-long v3, v6, v0

    if-gez v3, :cond_10

    sub-long/2addr v14, v6

    sget v0, Lcom/tencent/mna/w1;->k:I

    int-to-long v0, v0

    cmp-long v3, v14, v0

    if-lez v3, :cond_10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_e
    move-object v13, v0

    move/from16 v19, v1

    goto :goto_9

    :cond_f
    move-object v13, v0

    move/from16 v19, v1

    move-object/from16 v17, v7

    :cond_10
    :goto_9
    add-int/lit8 v11, v11, 0x1

    move-object v0, v13

    move/from16 v3, v16

    move-object/from16 v7, v17

    move/from16 v1, v19

    const/4 v6, 0x1

    goto :goto_8

    :cond_11
    move-object v13, v0

    move/from16 v19, v1

    move-object/from16 v17, v7

    .line 101
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/tencent/mna/w1$c;->a:J

    int-to-long v0, v10

    .line 102
    iput-wide v0, v8, Lcom/tencent/mna/w1$c;->b:J

    .line 103
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/tencent/mna/w1$c;->c:J

    .line 104
    sget-boolean v0, Lcom/tencent/mna/w1;->l:Z

    if-nez v0, :cond_12

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "neg fail, set push 0, orig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v8, Lcom/tencent/mna/w1$c;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 106
    iput-wide v0, v8, Lcom/tencent/mna/w1$c;->c:J

    .line 108
    :cond_12
    iput v12, v8, Lcom/tencent/mna/w1$c;->f:I

    move/from16 v0, v19

    .line 109
    iput v0, v8, Lcom/tencent/mna/w1$c;->e:I

    .line 110
    sget-object v1, Lcom/tencent/mna/w1;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_14

    if-lez v0, :cond_13

    int-to-long v1, v12

    .line 112
    iget-wide v3, v8, Lcom/tencent/mna/w1$c;->a:J

    const-wide/16 v5, 0x1f4

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    int-to-long v3, v0

    div-long/2addr v1, v3

    long-to-int v11, v1

    goto :goto_a

    :cond_13
    const/4 v11, -0x1

    :goto_a
    iput v11, v8, Lcom/tencent/mna/w1$c;->d:I

    goto :goto_b

    :cond_14
    const/16 v0, 0x1f5

    .line 114
    iput v0, v8, Lcom/tencent/mna/w1$c;->d:I

    :goto_b
    move-object/from16 v0, v17

    .line 116
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/tencent/mna/w1$c;->g:Ljava/lang/String;

    .line 117
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/tencent/mna/w1$c;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_15
    sget-object v0, Lcom/tencent/mna/w1;->m:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v8

    :catchall_0
    move-exception v0

    goto :goto_c

    .line 123
    :catch_0
    :try_start_1
    new-instance v0, Lcom/tencent/mna/w1$c;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const-wide/16 v2, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/mna/w1$c;-><init>(JJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    sget-object v1, Lcom/tencent/mna/w1;->m:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :goto_c
    sget-object v1, Lcom/tencent/mna/w1;->m:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 126
    throw v0
.end method

.method public static f()I
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/mna/w1;->c:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sget-object v1, Lcom/tencent/mna/w1;->a:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public static g()I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/w1;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
