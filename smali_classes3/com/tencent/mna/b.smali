.class abstract Lcom/tencent/mna/b;
.super Ljava/lang/Object;
.source "AbsNetworkBinding.java"

# interfaces
.implements Lcom/tencent/mna/f1;


# static fields
.field private static g:Ljava/lang/reflect/Field;

.field private static h:Ljava/lang/reflect/Field;

.field private static i:Landroid/net/Network;


# instance fields
.field public volatile a:I

.field private b:Lcom/tencent/mna/m;

.field private c:J

.field private d:Landroid/net/ConnectivityManager$NetworkCallback;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Landroid/net/Network;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/tencent/mna/b;->a:I

    .line 17
    new-instance v0, Lcom/tencent/mna/m;

    invoke-direct {v0}, Lcom/tencent/mna/m;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/b;->b:Lcom/tencent/mna/m;

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/tencent/mna/b;->c:J

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tencent/mna/b;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 22
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/mna/b;->e:Ljava/util/Map;

    .line 24
    iput-object v0, p0, Lcom/tencent/mna/b;->f:Landroid/net/Network;

    return-void
.end method

.method private a(ILandroid/net/Network;)I
    .locals 4

    .line 58
    sget-object v0, Lcom/tencent/mna/b;->h:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const/16 p1, -0x69

    return p1

    :cond_0
    const/4 v0, -0x1

    const-string v1, ":::NetworkBinding fd:"

    if-gtz p1, :cond_1

    .line 63
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bindSocketToNetwork fd less than 1"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    return v0

    .line 67
    :cond_1
    sget v2, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    if-eqz p2, :cond_2

    .line 68
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 69
    sget-object v3, Lcom/tencent/mna/b;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 71
    invoke-static {p2, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Network;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :cond_2
    const/16 p1, -0x67

    return p1

    :catch_0
    move-exception p2

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bindSocketToNetwork exception:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    return v0
.end method

.method private declared-synchronized a(Landroid/net/Network;)I
    .locals 8

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 49
    invoke-direct {p0, v3, p1}, Lcom/tencent/mna/b;->a(ILandroid/net/Network;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    .line 50
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":::NetworkBinding bindAllToNetwork fd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mNetId:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/mna/b;->a:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", res:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, -0x1

    :goto_3
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/mna/b;)I
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tencent/mna/b;->j()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/mna/b;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/mna/b;->a(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Object;)I
    .locals 3

    .line 51
    sget-object v0, Lcom/tencent/mna/b;->g:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 55
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":::NetworkBinding getNetId exception:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    return v1
.end method

.method static synthetic a(Lcom/tencent/mna/b;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/mna/b;->f:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mna/b;Landroid/net/Network;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/mna/b;->a(Landroid/net/Network;)I

    move-result p0

    return p0
.end method

.method private g()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->J()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/tencent/mna/t0;->h:I

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private g(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    sget v1, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/mna/b;->a(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tencent/mna/b;->c:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-gez v6, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    int-to-double v2, v1

    const-wide v6, 0x40d3880000000000L    # 20000.0

    div-double/2addr v6, v2

    double-to-int v2, v6

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":::NetworkBinding retryTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",maxOneLoopTimeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_3

    .line 18
    invoke-virtual {p0, p1}, Lcom/tencent/mna/b;->a(Landroid/content/Context;)V

    .line 20
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 21
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 22
    new-instance v6, Lcom/tencent/mna/b$a;

    invoke-direct {v6, p0, v4}, Lcom/tencent/mna/b$a;-><init>(Lcom/tencent/mna/b;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v6, p0, Lcom/tencent/mna/b;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {p0, p1, v6}, Lcom/tencent/mna/b;->a(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Z

    move-result v1

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":::NetworkBinding callback request, res:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    int-to-long v6, v2

    .line 72
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 74
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":::NetworkBinding latch wait exception:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    .line 76
    :goto_2
    iget v1, p0, Lcom/tencent/mna/b;->a:I

    if-eqz v1, :cond_2

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":::NetworkBinding callback get netid:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/b;->a:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return v5

    :cond_2
    move v1, v3

    goto/16 :goto_1

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":::NetworkBinding callback has no response"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":::NetworkBinding request exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return v0
.end method

.method private h(Landroid/content/Context;)V
    .locals 2

    .line 19
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/tencent/mna/b;->i()I

    .line 21
    invoke-direct {p0, p1}, Lcom/tencent/mna/b;->i(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private h()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/mna/b;->g:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mna/b;->h:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mna/b;->i:Landroid/net/Network;

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    .line 7
    :try_start_0
    const-class v0, Landroid/net/Network;

    const-string v2, "netId"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/b;->g:Ljava/lang/reflect/Field;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 10
    const-class v0, Ljava/io/FileDescriptor;

    const-string v2, "descriptor"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/b;->h:Ljava/lang/reflect/Field;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 13
    const-class v0, Landroid/net/Network;

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    sput-object v0, Lcom/tencent/mna/b;->i:Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":::NetworkBinding reflect exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :cond_1
    return v3
.end method

.method private declared-synchronized i()I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/mna/b;->j()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/tencent/mna/b;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":::NetworkBinding unbindAll clear map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private i(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 7
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 8
    iget-object v1, p0, Lcom/tencent/mna/b;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mna/b;->c:J

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":::NetworkBinding callback unregistered"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_1
    iput-object v0, p0, Lcom/tencent/mna/b;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":::NetworkBinding unregisterNetworkCallback exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    iput-object v0, p0, Lcom/tencent/mna/b;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    goto :goto_1

    :goto_0
    iput-object v0, p0, Lcom/tencent/mna/b;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 20
    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private declared-synchronized j()I
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3
    sget-object v5, Lcom/tencent/mna/b;->i:Landroid/net/Network;

    invoke-direct {p0, v3, v5}, Lcom/tencent/mna/b;->a(ILandroid/net/Network;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    .line 4
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":::NetworkBinding unbindAll Not ClearFromMap fd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", res:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, -0x1

    :goto_3
    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/tencent/mna/b;->b:Lcom/tencent/mna/m;

    iget v0, v0, Lcom/tencent/mna/m;->f:I

    return v0
.end method

.method public a(I)I
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/tencent/mna/b;->f:Landroid/net/Network;

    invoke-direct {p0, p1, v0}, Lcom/tencent/mna/b;->a(ILandroid/net/Network;)I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/tencent/mna/b;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mna/b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":::NetworkBinding bindFdToNetid fd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mNetId:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/tencent/mna/b;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", res:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return v0
.end method

.method public a(Landroid/content/Context;Z)I
    .locals 3

    const/16 v0, 0xbb8

    .line 9
    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->c(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/16 p1, -0x6a

    return p1

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/mna/b;->a(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p0, v0}, Lcom/tencent/mna/b;->b(I)I

    .line 16
    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->a(I)V

    const/16 p1, -0x6b

    return p1

    .line 20
    :cond_1
    new-instance v1, Lcom/tencent/mna/m;

    invoke-direct {v1}, Lcom/tencent/mna/m;-><init>()V

    iput-object v1, p0, Lcom/tencent/mna/b;->b:Lcom/tencent/mna/m;

    .line 21
    iget v2, p0, Lcom/tencent/mna/b;->a:I

    invoke-virtual {v1, p1, v0, v2}, Lcom/tencent/mna/m;->b(Landroid/content/Context;II)I

    move-result p1

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 23
    iget-object p2, p0, Lcom/tencent/mna/b;->b:Lcom/tencent/mna/m;

    iget-object p2, p2, Lcom/tencent/mna/m;->g:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 25
    iget-object p2, p0, Lcom/tencent/mna/b;->b:Lcom/tencent/mna/m;

    iget-object p2, p2, Lcom/tencent/mna/m;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/mna/base/jni/e;->e(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/tencent/mna/b;->b:Lcom/tencent/mna/m;

    iget-object p2, p2, Lcom/tencent/mna/m;->g:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/mna/base/jni/e;->a([Ljava/lang/String;)V

    .line 28
    :cond_2
    invoke-virtual {p0, v0}, Lcom/tencent/mna/b;->b(I)I

    .line 29
    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->a(I)V

    return p1
.end method

.method public a(Landroid/content/Context;ZZZ)I
    .locals 0

    if-eqz p2, :cond_0

    const/16 p1, -0x6e

    return p1

    :cond_0
    if-eqz p3, :cond_1

    const/16 p1, -0x65

    return p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/mna/b;->b(Landroid/content/Context;)I

    move-result p2

    if-eqz p2, :cond_2

    return p2

    .line 8
    :cond_2
    invoke-virtual {p0, p1, p4}, Lcom/tencent/mna/b;->a(Landroid/content/Context;Z)I

    move-result p1

    return p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/tencent/mna/b;->a:I

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/tencent/mna/b;->f:Landroid/net/Network;

    .line 32
    invoke-direct {p0, p1}, Lcom/tencent/mna/b;->h(Landroid/content/Context;)V

    return-void
.end method

.method protected a(ILandroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Z
    .locals 2

    .line 37
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 38
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 39
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 42
    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 43
    invoke-virtual {p2, p1, p3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x1

    return p1

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":::requestNetwork SDK version "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " too low."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public abstract a(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Z
.end method

.method public abstract a(Landroid/content/Context;Landroid/net/Network;)Z
.end method

.method public b(I)I
    .locals 3

    .line 27
    sget-object v0, Lcom/tencent/mna/b;->i:Landroid/net/Network;

    invoke-direct {p0, p1, v0}, Lcom/tencent/mna/b;->a(ILandroid/net/Network;)I

    move-result v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/tencent/mna/f1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":::NetworkBinding unbindFd fd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/tencent/mna/b;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public b(Landroid/content/Context;)I
    .locals 2

    .line 2
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/16 p1, -0x67

    return p1

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mna/b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, -0x69

    return p1

    .line 8
    :cond_1
    invoke-interface {p0, p1}, Lcom/tencent/mna/f1;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p1, -0x6f

    return p1

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/tencent/mna/b;->g()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 p1, -0x73

    return p1

    .line 14
    :cond_3
    invoke-static {p1}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/tencent/mna/f1;->c(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 p1, -0x66

    return p1

    .line 17
    :cond_4
    invoke-virtual {p0, p1}, Lcom/tencent/mna/b;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 p1, -0x70

    return p1

    .line 20
    :cond_5
    invoke-virtual {p0, p1}, Lcom/tencent/mna/b;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 p1, -0x71

    return p1

    .line 23
    :cond_6
    invoke-virtual {p0, p1}, Lcom/tencent/mna/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 p1, -0x72

    return p1

    .line 26
    :cond_7
    invoke-direct {p0, p1}, Lcom/tencent/mna/b;->g(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, -0x68

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/b;->b:Lcom/tencent/mna/m;

    iget-object v0, v0, Lcom/tencent/mna/m;->g:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/b;->b:Lcom/tencent/mna/m;

    iget-object v0, v0, Lcom/tencent/mna/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public abstract d(Landroid/content/Context;)Z
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/b;->b:Lcom/tencent/mna/m;

    iget v0, v0, Lcom/tencent/mna/m;->d:I

    return v0
.end method

.method public abstract e(Landroid/content/Context;)Z
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/b;->b:Lcom/tencent/mna/m;

    iget-object v0, v0, Lcom/tencent/mna/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract f(Landroid/content/Context;)Z
.end method
