.class public Lcom/tencent/gsdk/w0;
.super Ljava/lang/Object;
.source "SpeedTestStatTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final f:Lcom/tencent/gsdk/w0;

.field public static final g:Lcom/tencent/gsdk/w0;


# instance fields
.field private a:Lcom/tencent/gsdk/g0;

.field private b:Ljava/net/InetAddress;

.field private c:I

.field private d:I

.field private e:Lcom/tencent/gsdk/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/gsdk/w0$a;

    invoke-direct {v0}, Lcom/tencent/gsdk/w0$a;-><init>()V

    sput-object v0, Lcom/tencent/gsdk/w0;->f:Lcom/tencent/gsdk/w0;

    .line 23
    new-instance v0, Lcom/tencent/gsdk/w0$b;

    invoke-direct {v0}, Lcom/tencent/gsdk/w0$b;-><init>()V

    sput-object v0, Lcom/tencent/gsdk/w0;->g:Lcom/tencent/gsdk/w0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/tencent/gsdk/g0;Ljava/net/InetAddress;II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/tencent/gsdk/w0;->a:Lcom/tencent/gsdk/g0;

    .line 5
    iput-object p2, p0, Lcom/tencent/gsdk/w0;->b:Ljava/net/InetAddress;

    .line 6
    iput p3, p0, Lcom/tencent/gsdk/w0;->c:I

    .line 7
    iput p4, p0, Lcom/tencent/gsdk/w0;->d:I

    .line 8
    new-instance p1, Lcom/tencent/gsdk/v0;

    invoke-direct {p1, p4}, Lcom/tencent/gsdk/v0;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    .line 9
    iget-object p2, p0, Lcom/tencent/gsdk/w0;->a:Lcom/tencent/gsdk/g0;

    invoke-interface {p2, p1}, Lcom/tencent/gsdk/g0;->a(Lcom/tencent/gsdk/e0;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/gsdk/w0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/gsdk/w0;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/gsdk/w0;)Z
    .locals 1

    .line 13
    sget-object v0, Lcom/tencent/gsdk/w0;->f:Lcom/tencent/gsdk/w0;

    if-eq v0, p0, :cond_0

    sget-object v0, Lcom/tencent/gsdk/w0;->g:Lcom/tencent/gsdk/w0;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()I
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v0, v0, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v0, v0, Lcom/tencent/gsdk/v0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v0, v0, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, -0x1

    return v0

    .line 9
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-wide v2, v1, Lcom/tencent/gsdk/v0;->g:J

    int-to-long v4, v0

    div-long/2addr v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v0, v2

    .line 11
    iget-object v1, v1, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v1, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 12
    throw v0
.end method

.method public b()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v0, v0, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v0, v0, Lcom/tencent/gsdk/v0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v0, v0, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, -0x1

    return v0

    .line 10
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v1, Lcom/tencent/gsdk/v0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int v1, v0, v1

    int-to-float v1, v1

    int-to-float v0, v0

    const/4 v2, 0x0

    add-float/2addr v0, v2

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 13
    iget-object v1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v1, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v1, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 14
    throw v0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v0, v0, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v0, Lcom/tencent/gsdk/v0;->f:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, v0, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v1, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 7
    throw v0
.end method

.method public d()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v0, v0, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v0, v0, Lcom/tencent/gsdk/v0;->e:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v0, v0, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, -0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 10
    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget-object v1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v1, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v1, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 13
    throw v0
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v0, v0, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v0, Lcom/tencent/gsdk/v0;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, v0, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v1, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 7
    throw v0
.end method

.method public f()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/gsdk/w0;->d()I

    move-result v0

    iget v1, p0, Lcom/tencent/gsdk/w0;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/gsdk/w0;->a:Lcom/tencent/gsdk/g0;

    iget-object v1, p0, Lcom/tencent/gsdk/w0;->b:Ljava/net/InetAddress;

    iget v2, p0, Lcom/tencent/gsdk/w0;->c:I

    iget v3, p0, Lcom/tencent/gsdk/w0;->d:I

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/gsdk/g0;->a(Ljava/net/InetAddress;II)S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v1, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    invoke-virtual {p0}, Lcom/tencent/gsdk/w0;->d()I

    move-result v1

    .line 5
    const-string v2, "cping"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    const-string v3, "clostpkg"

    if-ne v2, v1, :cond_0

    .line 7
    :try_start_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/gsdk/w0;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :goto_1
    const-string v1, "avg_ping"

    invoke-virtual {p0}, Lcom/tencent/gsdk/w0;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v1, "lostpkgpct"

    invoke-virtual {p0}, Lcom/tencent/gsdk/w0;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget-object v1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v1, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v1, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 16
    throw v0

    .line 17
    :catch_0
    iget-object v1, p0, Lcom/tencent/gsdk/w0;->e:Lcom/tencent/gsdk/v0;

    iget-object v1, v1, Lcom/tencent/gsdk/v0;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 19
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
