.class public final Lcom/tencent/gsdk/u0;
.super Ljava/lang/Object;
.source "SpeedTestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gsdk/u0$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/gsdk/u0$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/gsdk/u0$a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/tencent/gsdk/g0;

.field private static d:Lcom/tencent/gsdk/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/u0;->a:Ljava/util/List;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tencent/gsdk/u0;->b:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/tencent/gsdk/b1;

    invoke-direct {v0}, Lcom/tencent/gsdk/b1;-><init>()V

    sput-object v0, Lcom/tencent/gsdk/u0;->c:Lcom/tencent/gsdk/g0;

    .line 5
    new-instance v0, Lcom/tencent/gsdk/d1;

    invoke-direct {v0}, Lcom/tencent/gsdk/d1;-><init>()V

    sput-object v0, Lcom/tencent/gsdk/u0;->d:Lcom/tencent/gsdk/g0;

    return-void
.end method

.method private static a(Ljava/net/InetAddress;III)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    .line 52
    sget-object v3, Lcom/tencent/gsdk/u0;->d:Lcom/tencent/gsdk/g0;

    invoke-interface {v3, p0, p1, p2}, Lcom/tencent/gsdk/g0;->a(Ljava/net/InetAddress;II)S

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-long p0, p3

    .line 54
    div-long/2addr v0, p0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;I)Lcom/tencent/gsdk/w0;
    .locals 0

    .line 48
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 49
    invoke-static {p0, p1}, Lcom/tencent/gsdk/u0;->a(Ljava/net/InetAddress;I)Lcom/tencent/gsdk/w0;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 51
    :catch_0
    sget-object p0, Lcom/tencent/gsdk/w0;->g:Lcom/tencent/gsdk/w0;

    return-object p0
.end method

.method public static a(Ljava/net/InetAddress;I)Lcom/tencent/gsdk/w0;
    .locals 1

    const/16 v0, 0x3e8

    .line 47
    invoke-static {p0, p1, v0}, Lcom/tencent/gsdk/u0;->a(Ljava/net/InetAddress;II)Lcom/tencent/gsdk/w0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/net/InetAddress;II)Lcom/tencent/gsdk/w0;
    .locals 2

    .line 43
    invoke-static {p1}, Lcom/tencent/gsdk/u0;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    sget-object p0, Lcom/tencent/gsdk/w0;->g:Lcom/tencent/gsdk/w0;

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Lcom/tencent/gsdk/w0;

    new-instance v1, Lcom/tencent/gsdk/d1;

    invoke-direct {v1}, Lcom/tencent/gsdk/d1;-><init>()V

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/tencent/gsdk/w0;-><init>(Lcom/tencent/gsdk/g0;Ljava/net/InetAddress;II)V

    return-object v0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Lcom/tencent/gsdk/u0;->a(Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 5

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 9
    array-length v0, p0

    if-nez v0, :cond_1

    return-void

    .line 12
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/tencent/gsdk/u0;->a:Ljava/util/List;

    .line 13
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 15
    :try_start_0
    sget-object v3, Lcom/tencent/gsdk/u0;->a:Ljava/util/List;

    new-instance v4, Lcom/tencent/gsdk/u0$a;

    invoke-direct {v4, v2}, Lcom/tencent/gsdk/u0$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo v1, "tcpTestIpAddrsStr: %s, udpTestIpAddrsStr: %s"

    invoke-static {v1, v0}, Lcom/tencent/gsdk/x;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p0}, Lcom/tencent/gsdk/u0;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/tencent/gsdk/u0;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->getInstance()Lcom/tencent/gsdk/api/GSDKSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/gsdk/api/GSDKSystem;->i()Landroid/content/Context;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/tencent/gsdk/s;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "signalLevel"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v0}, Lcom/tencent/gsdk/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xg"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {v0}, Lcom/tencent/gsdk/p0;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gateway"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 59
    invoke-static {v0, p0, p1}, Lcom/tencent/gsdk/y;->a(ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static a(Z)V
    .locals 7

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    sget-object v1, Lcom/tencent/gsdk/u0;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    const-string v1, "[Rsp]-1__GSDKTimeOutDetect"

    invoke-static {v1}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "[Rsp]0__GSDKTimeOutDetect"

    invoke-static {v1}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 27
    :goto_1
    sget-object v2, Lcom/tencent/gsdk/u0;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 29
    :try_start_0
    sget-object v2, Lcom/tencent/gsdk/u0;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/gsdk/u0$a;

    .line 30
    sget-object v3, Lcom/tencent/gsdk/u0;->c:Lcom/tencent/gsdk/g0;

    invoke-virtual {v2}, Lcom/tencent/gsdk/u0$a;->a()Ljava/net/InetAddress;

    move-result-object v4

    iget v5, v2, Lcom/tencent/gsdk/u0$a;->c:I

    const/16 v6, 0x3e8

    invoke-interface {v3, v4, v5, v6}, Lcom/tencent/gsdk/g0;->a(Ljava/net/InetAddress;II)S

    move-result v3

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "testTcpSpeed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/tencent/gsdk/u0$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/tencent/gsdk/u0$a;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", delay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/tencent/gsdk/u0$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    .line 39
    const-string/jumbo p0, "tcp"

    goto :goto_2

    :cond_2
    const-string p0, "down"

    .line 40
    :goto_2
    const-string/jumbo v1, "up_protocol"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string p0, "gsdk_report_tcpdelay"

    invoke-static {p0, v0}, Lcom/tencent/gsdk/u0;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/gsdk/u0;->b(I)Z

    move-result p0

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lcom/tencent/gsdk/u0;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Z)Ljava/lang/String;
    .locals 9

    .line 13
    const-string v0, ":"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 15
    :goto_0
    sget-object v4, Lcom/tencent/gsdk/u0;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 17
    :try_start_0
    sget-object v4, Lcom/tencent/gsdk/u0;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/gsdk/u0$a;

    .line 18
    invoke-virtual {v4}, Lcom/tencent/gsdk/u0$a;->a()Ljava/net/InetAddress;

    move-result-object v5

    iget v6, v4, Lcom/tencent/gsdk/u0$a;->c:I

    const/16 v7, 0x3e8

    const/4 v8, 0x3

    invoke-static {v5, v6, v7, v8}, Lcom/tencent/gsdk/u0;->a(Ljava/net/InetAddress;III)J

    move-result-wide v5

    long-to-int v6, v5

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "testUdpSpeed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/tencent/gsdk/u0$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/tencent/gsdk/u0$a;->c:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", delay:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "d"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/tencent/gsdk/u0$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/tencent/gsdk/u0$a;->c:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 28
    const-string/jumbo p0, "udp"

    goto :goto_1

    :cond_1
    const-string p0, "down"

    .line 29
    :goto_1
    const-string/jumbo v0, "up_protocol"

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string p0, "gsdk_report_udpdelay"

    invoke-static {p0, v2}, Lcom/tencent/gsdk/u0;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5
    array-length v0, p0

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/tencent/gsdk/u0;->b:Ljava/util/List;

    .line 9
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 11
    :try_start_0
    sget-object v3, Lcom/tencent/gsdk/u0;->b:Ljava/util/List;

    new-instance v4, Lcom/tencent/gsdk/u0$a;

    invoke-direct {v4, v2}, Lcom/tencent/gsdk/u0$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static b(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "tcp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Lcom/tencent/gsdk/u0;->a(Z)V

    goto :goto_0

    .line 3
    :cond_0
    const-string/jumbo v0, "udp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {v1}, Lcom/tencent/gsdk/u0;->b(Z)Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
