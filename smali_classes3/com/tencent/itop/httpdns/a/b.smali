.class public final Lcom/tencent/itop/httpdns/a/b;
.super Ljava/lang/Object;
.source "DnsMainRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/itop/httpdns/a/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/itop/httpdns/a/c/b<",
            "Lcom/tencent/itop/httpdns/a/b/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/itop/httpdns/a/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/itop/httpdns/a/c/b<",
            "Lcom/tencent/itop/httpdns/a/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/itop/httpdns/a/b/b/b;

.field private e:Lcom/tencent/itop/httpdns/a/b/a/b;

.field private f:Lcom/tencent/itop/httpdns/a/b/c/d;

.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->a:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/b/b;->a()Lcom/tencent/itop/httpdns/a/b/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->d:Lcom/tencent/itop/httpdns/a/b/b/b;

    .line 38
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/a/b;->a()Lcom/tencent/itop/httpdns/a/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->e:Lcom/tencent/itop/httpdns/a/b/a/b;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->f:Lcom/tencent/itop/httpdns/a/b/c/d;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/tencent/itop/httpdns/a/b;->g:Z

    .line 45
    iput-boolean v0, p0, Lcom/tencent/itop/httpdns/a/b;->h:Z

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iput-object p1, p0, Lcom/tencent/itop/httpdns/a/b;->a:Ljava/lang/String;

    .line 52
    :cond_0
    :try_start_0
    new-instance p1, Lcom/tencent/itop/httpdns/a/c/b;

    new-instance v0, Lcom/tencent/itop/httpdns/a/b/b/a;

    invoke-direct {v0}, Lcom/tencent/itop/httpdns/a/b/b/a;-><init>()V

    invoke-direct {p1, v0}, Lcom/tencent/itop/httpdns/a/c/b;-><init>(Lcom/tencent/itop/httpdns/a/b/a;)V

    iput-object p1, p0, Lcom/tencent/itop/httpdns/a/b;->b:Lcom/tencent/itop/httpdns/a/c/b;

    .line 53
    new-instance p1, Lcom/tencent/itop/httpdns/a/c/b;

    new-instance v0, Lcom/tencent/itop/httpdns/a/b/a/a;

    invoke-direct {v0}, Lcom/tencent/itop/httpdns/a/b/a/a;-><init>()V

    invoke-direct {p1, v0}, Lcom/tencent/itop/httpdns/a/c/b;-><init>(Lcom/tencent/itop/httpdns/a/b/a;)V

    iput-object p1, p0, Lcom/tencent/itop/httpdns/a/b;->c:Lcom/tencent/itop/httpdns/a/c/b;
    :try_end_0
    .catch Lcom/tencent/itop/httpdns/base/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->d:Lcom/tencent/itop/httpdns/a/b/b/b;

    invoke-virtual {v0}, Lcom/tencent/itop/httpdns/a/b/b/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->d:Lcom/tencent/itop/httpdns/a/b/b/b;

    .line 143
    invoke-virtual {v0}, Lcom/tencent/itop/httpdns/a/b/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, ""

    return-object v0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b;->d:Lcom/tencent/itop/httpdns/a/b/b/b;

    invoke-virtual {v1}, Lcom/tencent/itop/httpdns/a/b/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b;->d:Lcom/tencent/itop/httpdns/a/b/b/b;

    invoke-virtual {v1}, Lcom/tencent/itop/httpdns/a/b/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->e:Lcom/tencent/itop/httpdns/a/b/a/b;

    invoke-virtual {v0}, Lcom/tencent/itop/httpdns/a/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 112
    iget-boolean v1, p0, Lcom/tencent/itop/httpdns/a/b;->g:Z

    if-nez v1, :cond_0

    return-object v0

    .line 116
    :cond_0
    const-string v1, "domain"

    iget-object v2, p0, Lcom/tencent/itop/httpdns/a/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b;->f:Lcom/tencent/itop/httpdns/a/b/c/d;

    invoke-virtual {v1}, Lcom/tencent/itop/httpdns/a/b/c/d;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dns"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-boolean v1, p0, Lcom/tencent/itop/httpdns/a/b;->h:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isCache"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "ldns_ip"

    invoke-direct {p0}, Lcom/tencent/itop/httpdns/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b;->b:Lcom/tencent/itop/httpdns/a/c/b;

    iget v1, v1, Lcom/tencent/itop/httpdns/a/c/b;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ldns_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "hdns_ip"

    invoke-direct {p0}, Lcom/tencent/itop/httpdns/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b;->e:Lcom/tencent/itop/httpdns/a/b/a/b;

    iget-wide v1, v1, Lcom/tencent/itop/httpdns/a/b/a/b;->a:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ttl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b;->e:Lcom/tencent/itop/httpdns/a/b/a/b;

    iget-object v1, v1, Lcom/tencent/itop/httpdns/a/b/a/b;->b:Ljava/lang/String;

    const-string v2, "clientIP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b;->c:Lcom/tencent/itop/httpdns/a/c/b;

    iget v1, v1, Lcom/tencent/itop/httpdns/a/c/b;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hdns_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/tencent/itop/httpdns/a/b;->g:Z

    if-nez v0, :cond_0

    .line 136
    const-string v0, "0"

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->f:Lcom/tencent/itop/httpdns/a/b/c/d;

    invoke-virtual {v0}, Lcom/tencent/itop/httpdns/a/b/c/d;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 8

    .line 61
    const-string v0, "0"

    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/itop/httpdns/a/d;->a(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->e:Lcom/tencent/itop/httpdns/a/b/a/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 67
    const-string v0, "HttpDns cache hit."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 68
    invoke-static {}, Lcom/tencent/itop/httpdns/base/b;->a()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 69
    const-string v0, "Cur network stack is dual stack"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->b:Lcom/tencent/itop/httpdns/a/c/b;

    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/itop/httpdns/a/c/b;->a(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/c/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/itop/httpdns/a/b/b/b;

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->d:Lcom/tencent/itop/httpdns/a/b/b/b;

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->d:Lcom/tencent/itop/httpdns/a/b/b/b;

    iget-object v1, p0, Lcom/tencent/itop/httpdns/a/b;->e:Lcom/tencent/itop/httpdns/a/b/a/b;

    invoke-static {v0, v1}, Lcom/tencent/itop/httpdns/a/b/c/c;->b(Lcom/tencent/itop/httpdns/a/b/b/b;Lcom/tencent/itop/httpdns/a/b/a/b;)Lcom/tencent/itop/httpdns/a/b/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->f:Lcom/tencent/itop/httpdns/a/b/c/d;

    .line 73
    iput-boolean v2, p0, Lcom/tencent/itop/httpdns/a/b;->g:Z

    .line 74
    iput-boolean v2, p0, Lcom/tencent/itop/httpdns/a/b;->h:Z

    return-void

    .line 77
    :cond_2
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/a/b;->a()Lcom/tencent/itop/httpdns/a/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->e:Lcom/tencent/itop/httpdns/a/b/a/b;

    .line 80
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 81
    new-instance v3, Lcom/tencent/itop/httpdns/a/c;

    iget-object v4, p0, Lcom/tencent/itop/httpdns/a/b;->b:Lcom/tencent/itop/httpdns/a/c/b;

    iget-object v5, p0, Lcom/tencent/itop/httpdns/a/b;->a:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v5}, Lcom/tencent/itop/httpdns/a/c;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/tencent/itop/httpdns/a/b/a;Ljava/lang/String;)V

    .line 82
    new-instance v4, Lcom/tencent/itop/httpdns/a/c;

    iget-object v5, p0, Lcom/tencent/itop/httpdns/a/b;->c:Lcom/tencent/itop/httpdns/a/c/b;

    iget-object v6, p0, Lcom/tencent/itop/httpdns/a/b;->a:Ljava/lang/String;

    invoke-direct {v4, v0, v5, v6}, Lcom/tencent/itop/httpdns/a/c;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/tencent/itop/httpdns/a/b/a;Ljava/lang/String;)V

    .line 83
    sget-object v5, Lcom/tencent/itop/httpdns/base/a/a;->b:Lcom/tencent/itop/httpdns/base/a/b;

    invoke-interface {v5, v3}, Lcom/tencent/itop/httpdns/base/a/b;->execute(Ljava/lang/Runnable;)V

    .line 84
    sget-object v5, Lcom/tencent/itop/httpdns/base/a/a;->b:Lcom/tencent/itop/httpdns/base/a/b;

    invoke-interface {v5, v4}, Lcom/tencent/itop/httpdns/base/a/b;->execute(Ljava/lang/Runnable;)V

    .line 87
    :try_start_0
    invoke-static {}, Lcom/tencent/itop/httpdns/a/a/b;->c()I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v2

    goto :goto_0

    :catch_0
    nop

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->b:Lcom/tencent/itop/httpdns/a/c/b;

    invoke-static {}, Lcom/tencent/itop/httpdns/a/a/b;->c()I

    move-result v5

    iput v5, v0, Lcom/tencent/itop/httpdns/a/c/b;->a:I

    .line 93
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->c:Lcom/tencent/itop/httpdns/a/c/b;

    invoke-static {}, Lcom/tencent/itop/httpdns/a/a/b;->c()I

    move-result v5

    iput v5, v0, Lcom/tencent/itop/httpdns/a/c/b;->a:I

    .line 95
    :cond_3
    iget-object v0, v3, Lcom/tencent/itop/httpdns/a/c;->a:Lcom/tencent/itop/httpdns/a/b/c/a;

    check-cast v0, Lcom/tencent/itop/httpdns/a/b/b/b;

    if-eqz v0, :cond_4

    .line 97
    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->d:Lcom/tencent/itop/httpdns/a/b/b/b;

    .line 99
    :cond_4
    iget-object v0, v4, Lcom/tencent/itop/httpdns/a/c;->a:Lcom/tencent/itop/httpdns/a/b/c/a;

    check-cast v0, Lcom/tencent/itop/httpdns/a/b/a/b;

    if-eqz v0, :cond_5

    .line 101
    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->e:Lcom/tencent/itop/httpdns/a/b/a/b;

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->d:Lcom/tencent/itop/httpdns/a/b/b/b;

    iget-object v3, p0, Lcom/tencent/itop/httpdns/a/b;->e:Lcom/tencent/itop/httpdns/a/b/a/b;

    invoke-static {v0, v3}, Lcom/tencent/itop/httpdns/a/b/c/c;->a(Lcom/tencent/itop/httpdns/a/b/b/b;Lcom/tencent/itop/httpdns/a/b/a/b;)Lcom/tencent/itop/httpdns/a/b/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/itop/httpdns/a/b;->f:Lcom/tencent/itop/httpdns/a/b/c/d;

    .line 104
    iput-boolean v2, p0, Lcom/tencent/itop/httpdns/a/b;->g:Z

    .line 105
    iput-boolean v1, p0, Lcom/tencent/itop/httpdns/a/b;->h:Z

    return-void
.end method
