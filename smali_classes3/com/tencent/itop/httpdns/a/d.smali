.class public final Lcom/tencent/itop/httpdns/a/d;
.super Ljava/lang/Object;
.source "HttpDnsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/itop/httpdns/a/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/itop/httpdns/a/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/itop/httpdns/a/d;->a:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/itop/httpdns/a/d;->b:Ljava/util/List;

    return-void
.end method

.method private static a(J)J
    .locals 2

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    long-to-double p0, p0

    mul-double p0, p0, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, v0

    double-to-long p0, p0

    return-wide p0
.end method

.method static a(Ljava/lang/String;)Lcom/tencent/itop/httpdns/a/b/a/b;
    .locals 1

    .line 48
    sget-object v0, Lcom/tencent/itop/httpdns/a/d;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/itop/httpdns/a/b/a/b;

    return-object p0
.end method

.method public static a()V
    .locals 2

    const/4 v0, 0x0

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cache clean."

    invoke-static {v1, v0}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/tencent/itop/httpdns/a/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 54
    sget-object v0, Lcom/tencent/itop/httpdns/base/a/a;->a:Lcom/tencent/itop/httpdns/base/a/b;

    new-instance v1, Lcom/tencent/itop/httpdns/a/d$2;

    invoke-direct {v1}, Lcom/tencent/itop/httpdns/a/d$2;-><init>()V

    invoke-interface {v0, v1}, Lcom/tencent/itop/httpdns/base/a/b;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/tencent/itop/httpdns/a/b/a/b;)Z
    .locals 3

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/tencent/itop/httpdns/a/b/a/b;->a(Lcom/tencent/itop/httpdns/a/b/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Lcom/tencent/itop/httpdns/a/d;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/tencent/itop/httpdns/a/d$a;

    invoke-direct {v0, p0}, Lcom/tencent/itop/httpdns/a/d$a;-><init>(Ljava/lang/String;)V

    .line 32
    sget-object p0, Lcom/tencent/itop/httpdns/base/a/a;->a:Lcom/tencent/itop/httpdns/base/a/b;

    new-instance v1, Lcom/tencent/itop/httpdns/a/d$1;

    invoke-direct {v1, v0}, Lcom/tencent/itop/httpdns/a/d$1;-><init>(Lcom/tencent/itop/httpdns/a/d$a;)V

    invoke-interface {p0, v1}, Lcom/tencent/itop/httpdns/base/a/b;->execute(Ljava/lang/Runnable;)V

    .line 39
    sget-object p0, Lcom/tencent/itop/httpdns/base/a/a;->a:Lcom/tencent/itop/httpdns/base/a/b;

    iget-wide v1, p1, Lcom/tencent/itop/httpdns/a/b/a/b;->a:J

    .line 40
    invoke-static {v1, v2}, Lcom/tencent/itop/httpdns/a/d;->a(J)J

    move-result-wide v1

    .line 39
    invoke-interface {p0, v0, v1, v2}, Lcom/tencent/itop/httpdns/base/a/b;->a(Ljava/lang/Runnable;J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .line 19
    sget-object v0, Lcom/tencent/itop/httpdns/a/d;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .line 19
    sget-object v0, Lcom/tencent/itop/httpdns/a/d;->a:Ljava/util/Map;

    return-object v0
.end method
