.class public final Lcom/tencent/gsdk/m;
.super Ljava/lang/Object;
.source "CallRecorder.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private volatile b:J

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;J)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/tencent/gsdk/o;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gsdk/m;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/tencent/gsdk/m$a;

    invoke-direct {v0, p0}, Lcom/tencent/gsdk/m$a;-><init>(Lcom/tencent/gsdk/m;)V

    iput-object v0, p0, Lcom/tencent/gsdk/m;->d:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, v1, p2

    if-ltz v3, :cond_1

    const-wide/32 p2, 0xea60

    .line 22
    :cond_1
    iput-object p1, p0, Lcom/tencent/gsdk/m;->a:Landroid/os/Handler;

    .line 23
    iput-wide p2, p0, Lcom/tencent/gsdk/m;->b:J

    .line 25
    iget-object p1, p0, Lcom/tencent/gsdk/m;->a:Landroid/os/Handler;

    iget-wide p2, p0, Lcom/tencent/gsdk/m;->b:J

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    new-instance p1, Lcom/tencent/gsdk/m$b;

    invoke-direct {p1, p0}, Lcom/tencent/gsdk/m$b;-><init>(Lcom/tencent/gsdk/m;)V

    invoke-static {p1}, Lcom/tencent/gsdk/e;->a(Lcom/tencent/gsdk/d;)Z

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gsdk/m;->c:Ljava/util/Map;

    .line 18
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 20
    iget-object v1, p0, Lcom/tencent/gsdk/m;->c:Ljava/util/Map;

    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/tencent/gsdk/m;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/tencent/gsdk/m;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/tencent/gsdk/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/gsdk/m;->b()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/gsdk/m;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/gsdk/m;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/tencent/gsdk/m;->c:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/tencent/gsdk/m;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Lcom/tencent/gsdk/o;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/tencent/gsdk/m;->a()Ljava/lang/String;

    move-result-object v1

    .line 10
    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 12
    const-string v2, "gsdk_model_call_stat"

    invoke-static {v1, v2, v0}, Lcom/tencent/gsdk/y;->a(ILjava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcom/tencent/gsdk/m;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/gsdk/m;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/gsdk/m;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/gsdk/m;->b:J

    return-wide v0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const-wide/32 p1, 0xea60

    .line 2
    :cond_0
    iput-wide p1, p0, Lcom/tencent/gsdk/m;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "CallRecorder record: %s"

    invoke-static {v2, v1}, Lcom/tencent/gsdk/x;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/tencent/gsdk/m;->c:Ljava/util/Map;

    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/tencent/gsdk/m;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/tencent/gsdk/m;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 11
    iget-object v3, p0, Lcom/tencent/gsdk/m;->c:Ljava/util/Map;

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/tencent/gsdk/m;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
