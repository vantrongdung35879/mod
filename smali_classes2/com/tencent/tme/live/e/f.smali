.class public Lcom/tencent/tme/live/e/f;
.super Ljava/lang/Object;


# static fields
.field public static o:Lcom/tencent/tme/live/e/f;


# instance fields
.field public a:Lcom/tencent/tme/live/e/g;

.field public final b:Lcom/tencent/tme/live/e/i;

.field public c:I

.field public d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/tme/live/h/d;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tme/live/w1/a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Landroid/os/Handler;

.field public final h:Lcom/tencent/tme/live/j/c;

.field public i:Lcom/tencent/tme/live/j/d;

.field public j:J

.field public k:I

.field public final l:Landroid/content/BroadcastReceiver;

.field public final m:Ljava/lang/Runnable;

.field public final n:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$0sDqaX2iICfoomHT7LjQOYsRmT8(Lcom/tencent/tme/live/e/f;Lcom/tencent/tme/live/f/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/e/f;->b(Lcom/tencent/tme/live/f/c;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kv8Hkn98jA2eI42U3n4OalxKuso(Lcom/tencent/tme/live/e/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/e/f;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mn9onzxvzq70aFlxphVaTb1DlpA(Lcom/tencent/tme/live/e/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/e/f;->d()V

    return-void
.end method

.method public static synthetic $r8$lambda$e8LFZTfNkmi8zqJGOjbj7eo5bvM(Lcom/tencent/tme/live/e/f;Lcom/tencent/tme/live/f/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/e/f;->b(Lcom/tencent/tme/live/f/b;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uOlCBO0Ki190c1lN67HzeYEqzHQ(Lcom/tencent/tme/live/e/f;Lcom/tencent/tme/live/f/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/e/f;->b(Lcom/tencent/tme/live/f/a;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/e/i;

    invoke-direct {v0}, Lcom/tencent/tme/live/e/i;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/f;->b:Lcom/tencent/tme/live/e/i;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/e/f;->c:I

    iput-boolean v0, p0, Lcom/tencent/tme/live/e/f;->f:Z

    new-instance v0, Lcom/tencent/tme/live/e/f$b;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e/f$b;-><init>(Lcom/tencent/tme/live/e/f;)V

    iput-object v0, p0, Lcom/tencent/tme/live/e/f;->h:Lcom/tencent/tme/live/j/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tme/live/e/f;->j:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tme/live/e/f;->k:I

    new-instance v0, Lcom/tencent/tme/live/e/f$c;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e/f$c;-><init>(Lcom/tencent/tme/live/e/f;)V

    iput-object v0, p0, Lcom/tencent/tme/live/e/f;->l:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/tencent/tme/live/e/f$d;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e/f$d;-><init>(Lcom/tencent/tme/live/e/f;)V

    iput-object v0, p0, Lcom/tencent/tme/live/e/f;->m:Ljava/lang/Runnable;

    new-instance v0, Lcom/tencent/tme/live/e/f$e;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e/f$e;-><init>(Lcom/tencent/tme/live/e/f;)V

    iput-object v0, p0, Lcom/tencent/tme/live/e/f;->n:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/e/f;)V
    .locals 14

    const-string v0, "MinaManager"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/e/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/h/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2
    iget-wide v6, v2, Lcom/tencent/tme/live/h/d;->b:J

    sub-long/2addr v4, v6

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "checkTimeOut [%d]%d_seq:%d,diffTime:%d"

    iget v8, v2, Lcom/tencent/tme/live/h/d;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v2, Lcom/tencent/tme/live/h/d;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v2, Lcom/tencent/tme/live/h/d;->e:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v8, 0x1

    aput-object v9, v12, v8

    const/4 v8, 0x2

    aput-object v10, v12, v8

    const/4 v8, 0x3

    aput-object v11, v12, v8

    invoke-static {v6, v7, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v6, Lcom/tencent/tme/live/e/g;->i:I

    const/16 v6, 0x2710

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 4
    iget-object v4, v2, Lcom/tencent/tme/live/h/d;->a:Lcom/tencent/tme/live/x1/a;

    .line 5
    iget v5, v2, Lcom/tencent/tme/live/h/d;->c:I

    .line 6
    iget v6, v2, Lcom/tencent/tme/live/h/d;->d:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    invoke-static/range {v5 .. v10}, Lcom/tencent/tme/live/w1/c;->a(II[B[B[B[B)Lcom/tencent/tme/live/w1/c;

    move-result-object v2

    check-cast v4, Lcom/tencent/tme/live/k/e$a;

    invoke-virtual {v4, v2}, Lcom/tencent/tme/live/k/e$a;->a(Lcom/tencent/tme/live/w1/c;)V

    iget-object v2, p0, Lcom/tencent/tme/live/e/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "checkTimeOut error : "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized b()Lcom/tencent/tme/live/e/f;
    .locals 2

    const-class v0, Lcom/tencent/tme/live/e/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/e/f;->o:Lcom/tencent/tme/live/e/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/e/f;

    invoke-direct {v1}, Lcom/tencent/tme/live/e/f;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/e/f;->o:Lcom/tencent/tme/live/e/f;

    :cond_0
    sget-object v1, Lcom/tencent/tme/live/e/f;->o:Lcom/tencent/tme/live/e/f;
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

.method private b(Lcom/tencent/tme/live/f/a;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/e/f;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tencent/tme/live/e/f;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/tencent/tme/live/e/f;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/w1/a;

    iget-object v3, p1, Lcom/tencent/tme/live/f/a;->a:Lcom/tencent/tme/live/w1/c;

    iget v3, v3, Lcom/tencent/tme/live/w1/c;->a:I

    iget-object v4, p1, Lcom/tencent/tme/live/f/a;->b:Lcom/tencent/tme/live/w1/b;

    iget v4, v4, Lcom/tencent/tme/live/w1/b;->b:I

    invoke-interface {v2, v3, v4, v0}, Lcom/tencent/tme/live/w1/a;->a(III)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tme/live/e/f;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/w1/a;

    iget-object v3, p1, Lcom/tencent/tme/live/f/a;->b:Lcom/tencent/tme/live/w1/b;

    invoke-interface {v2, v3}, Lcom/tencent/tme/live/w1/a;->a(Lcom/tencent/tme/live/w1/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "handleBroadcastNotice inner error : "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MinaManager"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private b(Lcom/tencent/tme/live/f/b;)V
    .locals 3

    const-string v0, "MinaManager"

    const/4 v1, 0x0

    :try_start_0
    iget p1, p1, Lcom/tencent/tme/live/f/b;->a:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/tencent/tme/live/e/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/e/f;->i:Lcom/tencent/tme/live/j/d;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/tencent/tme/live/j/d;->a()V

    :cond_1
    const-string p1, "socket connect success"

    invoke-static {v0, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    const-string p1, "socket connect fail"

    goto :goto_0

    :cond_3
    const/4 v2, -0x2

    if-ne p1, v2, :cond_4

    .line 1
    const-string p1, "socket disconnect"

    .line 2
    :goto_0
    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    const-string v2, "handleConnectTypeNotice inner error : "

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, v2, v0, v1}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private b(Lcom/tencent/tme/live/f/c;)V
    .locals 5

    const-string v0, "onOtherError--\u7f51\u7edc\u8bbf\u95ee\u8fd4\u56de\u9519\u8bef\u7801--"

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/e/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p1, Lcom/tencent/tme/live/f/c;->b:Lcom/tencent/tme/live/w1/b;

    iget v3, v2, Lcom/tencent/tme/live/w1/b;->a:I

    iget v4, v2, Lcom/tencent/tme/live/w1/b;->b:I

    iget v2, v2, Lcom/tencent/tme/live/w1/b;->d:I

    invoke-virtual {p0, v3, v4, v2}, Lcom/tencent/tme/live/e/f;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/h/d;

    iget v2, p1, Lcom/tencent/tme/live/f/c;->c:I

    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    .line 4
    iget-object v0, v1, Lcom/tencent/tme/live/h/d;->a:Lcom/tencent/tme/live/x1/a;

    .line 5
    iget-object v1, p1, Lcom/tencent/tme/live/f/c;->a:Lcom/tencent/tme/live/w1/c;

    iget-object v2, p1, Lcom/tencent/tme/live/f/c;->b:Lcom/tencent/tme/live/w1/b;

    check-cast v0, Lcom/tencent/tme/live/k/e$a;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/k/e$a;->a(Lcom/tencent/tme/live/w1/c;Lcom/tencent/tme/live/w1/b;)V

    goto :goto_0

    :cond_1
    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_3

    .line 6
    iget-object v0, v1, Lcom/tencent/tme/live/h/d;->a:Lcom/tencent/tme/live/x1/a;

    .line 7
    iget-object v1, p1, Lcom/tencent/tme/live/f/c;->a:Lcom/tencent/tme/live/w1/c;

    check-cast v0, Lcom/tencent/tme/live/k/e$a;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/k/e$a;->a(Lcom/tencent/tme/live/w1/c;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 8
    iget-object v1, v1, Lcom/tencent/tme/live/h/d;->a:Lcom/tencent/tme/live/x1/a;

    .line 9
    check-cast v1, Lcom/tencent/tme/live/k/e$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NetProxy"

    invoke-static {v3, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/tencent/tme/live/k/e$a;->a:Lcom/tencent/tme/live/k/e$b;

    invoke-interface {v0, v2}, Lcom/tencent/tme/live/k/e$b;->b(I)V

    .line 11
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/e/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/tencent/tme/live/f/c;->b:Lcom/tencent/tme/live/w1/b;

    iget v1, p1, Lcom/tencent/tme/live/w1/b;->a:I

    iget v2, p1, Lcom/tencent/tme/live/w1/b;->b:I

    iget p1, p1, Lcom/tencent/tme/live/w1/b;->d:I

    invoke-virtual {p0, v1, v2, p1}, Lcom/tencent/tme/live/e/f;->a(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "handleRspNotice inner error : "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MinaManager"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private c()V
    .locals 2

    const-string v0, "MinaManager"

    const-string v1, "[TME_NET_LINK]connectSocket onSuccess..."

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/e/d;->b()Lcom/tencent/tme/live/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tme/live/e/d;->a()V

    invoke-static {}, Lcom/tencent/tme/live/e/d;->b()Lcom/tencent/tme/live/e/d;

    move-result-object v0

    new-instance v1, Lcom/tencent/tme/live/e/f$a;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/e/f$a;-><init>(Lcom/tencent/tme/live/e/f;)V

    .line 1
    iput-object v1, v0, Lcom/tencent/tme/live/e/d;->a:Lcom/tencent/tme/live/j/a;

    return-void
.end method

.method private synthetic d()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tencent/tme/live/e/d;->b()Lcom/tencent/tme/live/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tme/live/e/d;->c()V

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/e/f;->e()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(II[BLcom/tencent/tme/live/x1/a;)I
    .locals 14

    move-object v1, p0

    move v0, p1

    move/from16 v9, p2

    const-string v10, "socket command:"

    monitor-enter p0

    :try_start_0
    iget-boolean v2, v1, Lcom/tencent/tme/live/e/f;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    const/4 v0, -0x6

    return v0

    :cond_0
    :try_start_1
    iget v2, v1, Lcom/tencent/tme/live/e/f;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/tencent/tme/live/e/f;->c:I

    sget-object v2, Lcom/tencent/tme/live/e/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tme/live/s2/h;->c(Landroid/content/Context;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    const/4 v0, -0x3

    return v0

    :cond_1
    :try_start_2
    iget-object v11, v1, Lcom/tencent/tme/live/e/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v1, Lcom/tencent/tme/live/e/f;->c:I

    invoke-virtual {p0, p1, v9, v2}, Lcom/tencent/tme/live/e/f;->a(III)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/tencent/tme/live/h/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v8, v1, Lcom/tencent/tme/live/e/f;->c:I

    move-object v2, v13

    move-object/from16 v3, p4

    move v6, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/tencent/tme/live/h/d;-><init>(Lcom/tencent/tme/live/x1/a;JIII)V

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, v1, Lcom/tencent/tme/live/e/f;->c:I

    .line 12
    iget-object v3, v1, Lcom/tencent/tme/live/e/f;->a:Lcom/tencent/tme/live/e/g;

    if-nez v3, :cond_2

    const/4 v2, -0x7

    goto :goto_0

    .line 13
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " subcmd:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " seq is : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MinaThread"

    invoke-static {v4, v2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v3, Lcom/tencent/tme/live/e/g;->f:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v8, v3, Lcom/tencent/tme/live/e/g;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/tencent/tme/live/e/h;

    move-object v2, v10

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/tencent/tme/live/e/h;-><init>(Lcom/tencent/tme/live/e/g;III[B)V

    invoke-interface {v8, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x5

    if-eq v2, v3, :cond_5

    const/4 v3, -0x4

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    monitor-exit p0

    return v2

    .line 14
    :cond_5
    :goto_1
    :try_start_3
    iget-object v3, v1, Lcom/tencent/tme/live/e/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v1, Lcom/tencent/tme/live/e/f;->c:I

    invoke-virtual {p0, p1, v9, v4}, Lcom/tencent/tme/live/e/f;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final a(III)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "%s%s%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 4

    new-instance v0, Lcom/tencent/tme/live/e/f$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e/f$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/e/f;)V

    .line 8
    iput-object v0, p0, Lcom/tencent/tme/live/e/f;->i:Lcom/tencent/tme/live/j/d;

    .line 9
    iget-object v0, p0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/e/f;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tme/live/e/f;->m:Ljava/lang/Runnable;

    invoke-static {}, Lcom/tencent/tme/live/e/d;->b()Lcom/tencent/tme/live/e/d;

    move-result-object v2

    iget v2, v2, Lcom/tencent/tme/live/e/d;->k:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/e/f;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/tencent/tme/live/f/a;)V
    .locals 3

    const-string v0, "mBroadcastNotice receive : "

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "MinaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/tme/live/f/a;->b:Lcom/tencent/tme/live/w1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/w1/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tme/live/e/f$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tme/live/e/f$$ExternalSyntheticLambda3;-><init>(Lcom/tencent/tme/live/e/f;Lcom/tencent/tme/live/f/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "handleBroadcastNotice error : "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MinaManager"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/tencent/tme/live/f/b;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/tencent/tme/live/e/f$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tme/live/e/f$$ExternalSyntheticLambda2;-><init>(Lcom/tencent/tme/live/e/f;Lcom/tencent/tme/live/f/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "handleConnectTypeNotice error : "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MinaManager"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_1
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/tencent/tme/live/f/c;)V
    .locals 3

    const-string v0, "mRspNotice receive : "

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "MinaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/tme/live/f/c;->b:Lcom/tencent/tme/live/w1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/w1/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tme/live/e/f$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tme/live/e/f$$ExternalSyntheticLambda1;-><init>(Lcom/tencent/tme/live/e/f;Lcom/tencent/tme/live/f/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "handleRspNotice error : "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MinaManager"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MinaManager"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "createSocketThread....."

    invoke-static {v0, v2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/tme/live/e/f;->a:Lcom/tencent/tme/live/e/g;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/tme/live/e/g;->a()V

    iput-object v1, p0, Lcom/tencent/tme/live/e/f;->a:Lcom/tencent/tme/live/e/g;

    :cond_0
    const-string v2, "MinaThread create....."

    invoke-static {v0, v2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/tme/live/e/g;

    invoke-direct {v2, p1}, Lcom/tencent/tme/live/e/g;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/tencent/tme/live/e/f;->a:Lcom/tencent/tme/live/e/g;

    iget-object p1, p0, Lcom/tencent/tme/live/e/f;->h:Lcom/tencent/tme/live/j/c;

    .line 10
    iput-object p1, v2, Lcom/tencent/tme/live/e/g;->g:Lcom/tencent/tme/live/j/c;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "createSocketThread error : "

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, v2, v0, v1}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final e()V
    .locals 4

    const-string v0, "MinaManager release : "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/tme/live/e/f;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MinaManager"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/tme/live/e/f;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/e/f;->f:Z

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/tencent/tme/live/f/d;->g:Lcom/tencent/tme/live/f/d;

    .line 2
    iget-object v1, p0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/tencent/tme/live/e/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/tme/live/e/f;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/tme/live/e/f;->g:Landroid/os/Handler;

    :cond_1
    iget-object v1, p0, Lcom/tencent/tme/live/e/f;->a:Lcom/tencent/tme/live/e/g;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tencent/tme/live/e/g;->a()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/f;->a:Lcom/tencent/tme/live/e/g;

    :cond_2
    iget-object v1, p0, Lcom/tencent/tme/live/e/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_3
    iget-object v1, p0, Lcom/tencent/tme/live/e/f;->e:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/f;->e:Ljava/util/List;

    :cond_4
    iget-object v1, p0, Lcom/tencent/tme/live/e/f;->b:Lcom/tencent/tme/live/e/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/tencent/tme/live/e/f;->b()Lcom/tencent/tme/live/e/f;

    move-result-object v2

    .line 4
    iget-object v2, v2, Lcom/tencent/tme/live/e/f;->e:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_5
    invoke-static {}, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->a()Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;

    move-result-object v1

    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->a:Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;

    if-eqz v2, :cond_6

    sput-object v0, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->a:Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v1

    .line 7
    :try_start_1
    sget-object v1, Lcom/tencent/tme/live/e/a;->a:Landroid/content/Context;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/tencent/tme/live/e/f;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "unregisterReceiver err0r : "

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MinaManager"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    sput-object v0, Lcom/tencent/tme/live/e/f;->o:Lcom/tencent/tme/live/e/f;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public f()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/tme/live/e/f$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/e/f$$ExternalSyntheticLambda4;-><init>(Lcom/tencent/tme/live/e/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
