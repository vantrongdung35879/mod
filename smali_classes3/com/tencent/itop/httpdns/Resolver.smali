.class public Lcom/tencent/itop/httpdns/Resolver;
.super Ljava/lang/Object;
.source "Resolver.java"


# static fields
.field private static volatile sInstance:Lcom/tencent/itop/httpdns/Resolver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/itop/httpdns/Resolver;
    .locals 2

    .line 14
    sget-object v0, Lcom/tencent/itop/httpdns/Resolver;->sInstance:Lcom/tencent/itop/httpdns/Resolver;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lcom/tencent/itop/httpdns/Resolver;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/tencent/itop/httpdns/Resolver;->sInstance:Lcom/tencent/itop/httpdns/Resolver;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/tencent/itop/httpdns/Resolver;

    invoke-direct {v1}, Lcom/tencent/itop/httpdns/Resolver;-><init>()V

    sput-object v1, Lcom/tencent/itop/httpdns/Resolver;->sInstance:Lcom/tencent/itop/httpdns/Resolver;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/itop/httpdns/Resolver;->sInstance:Lcom/tencent/itop/httpdns/Resolver;

    return-object v0
.end method


# virtual methods
.method public addLogNode(Lcom/tencent/itop/httpdns/base/log/ILogNode;)V
    .locals 0

    .line 84
    invoke-static {p1}, Lcom/tencent/itop/httpdns/base/log/b;->a(Lcom/tencent/itop/httpdns/base/log/ILogNode;)V

    return-void
.end method

.method public getAddrByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 75
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "Resolver.getAddrByName(%s) called."

    invoke-static {v3, v1}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {p1}, Lcom/tencent/itop/httpdns/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    .line 77
    array-length v3, p1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 78
    :cond_1
    :goto_0
    const-string p1, "0;0"

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 4

    .line 39
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v0, "Resolver.init(%s, %d, %b) called."

    invoke-static {v0, v2}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-static {p1, p2, p4, p3}, Lcom/tencent/itop/httpdns/a/e;->a(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public initWithTDM(Landroid/content/Context;Ljava/lang/String;IZI)V
    .locals 5

    .line 53
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    const-string v0, "Resolver.initWithTDM(%s, %d, %b, %d) called."

    invoke-static {v0, v3}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-static {p1, p2, p4, p3, p5}, Lcom/tencent/itop/httpdns/a/e;->a(Landroid/content/Context;Ljava/lang/String;ZII)V

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Resolver.setOpenId(%s) called."

    invoke-static {v1, v0}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-static {p1}, Lcom/tencent/itop/httpdns/a/e;->a(Ljava/lang/String;)V

    return-void
.end method
