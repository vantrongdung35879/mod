.class public final Lcom/tencent/mna/base/utils/WifiUtil;
.super Ljava/lang/Object;
.source "WifiUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/utils/WifiUtil$WifiSignalChangeReceiver;,
        Lcom/tencent/mna/base/utils/WifiUtil$b;,
        Lcom/tencent/mna/base/utils/WifiUtil$a;
    }
.end annotation


# static fields
.field private static a:I = -0x1

.field private static b:Lcom/tencent/mna/base/utils/WifiUtil$WifiSignalChangeReceiver; = null

.field private static c:I = 0x1

.field private static d:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 2
    sget v0, Lcom/tencent/mna/base/utils/WifiUtil;->c:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0

    .line 3
    sput p0, Lcom/tencent/mna/base/utils/WifiUtil;->c:I

    return p0
.end method

.method private static a(II)I
    .locals 5

    .line 123
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x6

    return p0

    .line 126
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge p0, p1, :cond_3

    .line 130
    invoke-static {p0}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .line 132
    invoke-static {v3, v4}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/2addr v2, v4

    const/16 v3, 0xfe

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-wide/16 p0, 0x7d0

    .line 142
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    invoke-static {v0}, Lcom/tencent/mna/base/utils/WifiUtil;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static a(III)I
    .locals 10

    sub-int v0, p1, p0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x32

    if-le p2, v2, :cond_1

    const/16 p2, 0x32

    .line 75
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRouterTerminalInfo multipleThread init from:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")to:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {p1}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), threadNum:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 79
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 80
    div-int v5, v0, p2

    .line 81
    rem-int/2addr v0, p2

    const/16 p2, 0xbb8

    .line 83
    div-int v6, p2, v5

    div-int/lit8 v6, v6, 0x2

    if-ge v6, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v6

    .line 88
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge p0, p1, :cond_4

    add-int v7, p0, v5

    if-lez v0, :cond_3

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 96
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getRouterTerminalInfo multipleThread from:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {v7}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "), count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v9, v7, p0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", reachTimeoutMills:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", totalMills:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int v9, v5, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 98
    invoke-static {v8}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 101
    new-instance v8, Lcom/tencent/mna/base/utils/WifiUtil$a;

    invoke-direct {v8, p0, v7, v1}, Lcom/tencent/mna/base/utils/WifiUtil$a;-><init>(III)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p0, v7

    goto :goto_2

    .line 104
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/mna/base/utils/WifiUtil$a;

    .line 105
    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 108
    :cond_5
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    add-int/2addr v1, p2

    int-to-long p0, v1

    .line 111
    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p0, p1, p2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 113
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 116
    :catch_0
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 119
    :cond_6
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mna/base/utils/WifiUtil$a;

    .line 120
    iget v1, v0, Lcom/tencent/mna/base/utils/WifiUtil$a;->a:I

    add-int/2addr p1, v1

    .line 121
    iget v1, v0, Lcom/tencent/mna/base/utils/WifiUtil$a;->b:I

    add-int/2addr p2, v1

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRouterTerminalInfo multipleThread totalTerminals:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentTerminals:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/tencent/mna/base/utils/WifiUtil$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", totalSend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentSend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/tencent/mna/base/utils/WifiUtil$a;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    return p1
.end method

.method public static a(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3

    .line 172
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    .line 173
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    return v2

    .line 176
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 178
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public static a(Landroid/content/Context;I)Lcom/tencent/mna/base/utils/WifiUtil$b;
    .locals 9

    if-nez p0, :cond_0

    .line 4
    const-string p0, "getRouterTerminalInfo, context is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 5
    new-instance p0, Lcom/tencent/mna/base/utils/WifiUtil$b;

    const/4 p1, -0x2

    invoke-direct {p0, p1}, Lcom/tencent/mna/base/utils/WifiUtil$b;-><init>(I)V

    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 10
    const-string p0, "getRouterTerminalInfo, current net is non-wifi"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 11
    new-instance p0, Lcom/tencent/mna/base/utils/WifiUtil$b;

    const/4 p1, -0x3

    invoke-direct {p0, p1}, Lcom/tencent/mna/base/utils/WifiUtil$b;-><init>(I)V

    return-object p0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 15
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_2

    .line 17
    const-string p0, "getRouterTerminalInfo, wifiManager is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 18
    new-instance p0, Lcom/tencent/mna/base/utils/WifiUtil$b;

    const/4 p1, -0x4

    invoke-direct {p0, p1}, Lcom/tencent/mna/base/utils/WifiUtil$b;-><init>(I)V

    return-object p0

    .line 21
    :cond_2
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 22
    const-string p0, "getRouterTerminalInfo, checkLanTerminalsPermission failed, return 1"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 23
    new-instance p0, Lcom/tencent/mna/base/utils/WifiUtil$b;

    invoke-direct {p0, v1}, Lcom/tencent/mna/base/utils/WifiUtil$b;-><init>(I)V

    return-object p0

    .line 26
    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p0

    .line 27
    iget v0, p0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 28
    iget p0, p0, Landroid/net/DhcpInfo;->netmask:I

    if-nez p0, :cond_4

    .line 31
    const-string p0, "getRouterTerminalInfo, netmaskNetSeq is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const p0, 0xffffff

    .line 33
    :cond_4
    invoke-static {v0}, Lcom/tencent/mna/n1;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/tencent/mna/n1;->q(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 35
    const-string p0, "getRouterTerminalInfo, current host ip is not valid ipv4 address"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 36
    new-instance p0, Lcom/tencent/mna/base/utils/WifiUtil$b;

    const/4 p1, -0x5

    invoke-direct {p0, p1}, Lcom/tencent/mna/base/utils/WifiUtil$b;-><init>(I)V

    return-object p0

    .line 39
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 40
    invoke-static {v0}, Lcom/tencent/mna/n1;->j(Ljava/lang/String;)I

    move-result v4

    .line 41
    invoke-static {p0}, Lcom/tencent/mna/n1;->b(I)I

    move-result v5

    and-int/2addr v4, v5

    add-int/lit8 v6, v4, 0x1

    not-int v5, v5

    or-int/2addr v5, v4

    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getRouterTerminalInfo, ip:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", netmask:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {p0}, Lcom/tencent/mna/n1;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getRouterTerminalInfo, startIp:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "), endIp:"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {v5}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    sub-int p0, v5, v6

    const/16 v0, 0xfe

    if-le p0, v0, :cond_6

    add-int/lit16 v5, v4, 0xff

    :cond_6
    sub-int p0, v5, v6

    .line 58
    invoke-static {v6, v5}, Lcom/tencent/mna/base/utils/WifiUtil;->a(II)I

    move-result v0

    if-gez v0, :cond_7

    .line 60
    invoke-static {v6, v5, p1}, Lcom/tencent/mna/base/utils/WifiUtil;->a(III)I

    move-result v0

    :cond_7
    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v1, v0

    .line 67
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getRouterTerminalInfo, SDK_INT:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tencent/mna/base/utils/a$a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxThreadNum:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", availableIps:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", terminals:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", elapse:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 73
    sput v1, Lcom/tencent/mna/base/utils/WifiUtil;->a:I

    .line 74
    new-instance p1, Lcom/tencent/mna/base/utils/WifiUtil$b;

    invoke-direct {p1, v1, p0}, Lcom/tencent/mna/base/utils/WifiUtil$b;-><init>(II)V

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 151
    const-string v0, "0.0.0.0"

    if-nez p0, :cond_0

    return-object v0

    .line 156
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v1, "wifi"

    .line 157
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p0

    .line 160
    iget p0, p0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {p0}, Lcom/tencent/mna/n1;->c(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 0

    .line 161
    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->f(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 162
    const-string p0, "<NOPERM BSSID>"

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 165
    const-string p0, "<NULL>"

    return-object p0

    .line 167
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 169
    const-string p0, "<NULL BSSID>"

    return-object p0

    .line 171
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Set;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 147
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 148
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->c(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic b()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/base/utils/WifiUtil;->d:I

    return v0
.end method

.method static synthetic b(I)I
    .locals 0

    .line 2
    sput p0, Lcom/tencent/mna/base/utils/WifiUtil;->d:I

    return p0
.end method

.method private static b(II)I
    .locals 0

    if-lez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 2

    const-string v0, "pingGateway, ip: "

    .line 98
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {p0, p1}, Lcom/tencent/mna/i2;->b(Ljava/lang/String;I)I

    move-result p1

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", avgDelay: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "pingGateway, exception:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 107
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 109
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->f(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0, v0}, Lcom/tencent/mna/base/utils/WifiUtil;->a(Landroid/content/Context;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRouterMac, exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method private static b(Ljava/util/Set;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_b

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "ip neighbor"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 21
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 22
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 24
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 25
    const-string v5, "\\s+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 26
    array-length v5, v1

    const/4 v6, 0x4

    if-le v5, v6, :cond_1

    const/4 v5, 0x0

    .line 27
    aget-object v5, v1, v5

    .line 28
    invoke-interface {p0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 29
    aget-object v6, v1, v6

    .line 30
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v1, v1, v7

    .line 33
    const-string v7, "FAILED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "INCOMPLETE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "00:00:00:00:00:00"

    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 35
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result p0

    if-eqz p0, :cond_3

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRouterTerminalInfo getLanMacAddrAndroidQ error exitValue:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 44
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRouterTerminalInfo getLanMacAddrAndroidQ getNum:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 51
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    if-eqz v3, :cond_4

    .line 57
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    :catchall_1
    :cond_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    return-object v0

    :catchall_3
    move-exception p0

    move-object v1, v4

    goto :goto_2

    :catchall_4
    move-exception p0

    goto :goto_2

    :catchall_5
    move-exception p0

    move-object v3, v1

    goto :goto_2

    :catchall_6
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    .line 64
    :goto_2
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRouterTerminalInfo getLanMacAddrAndroidQ exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    if-eqz v2, :cond_5

    .line 68
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_3

    :catchall_7
    nop

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 74
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_4

    :catchall_8
    nop

    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    .line 80
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    :catchall_9
    :cond_7
    return-object v0

    :catchall_a
    move-exception p0

    if-eqz v2, :cond_8

    .line 81
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_5

    :catchall_b
    nop

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    .line 87
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_6

    :catchall_c
    nop

    :cond_9
    :goto_6
    if-eqz v1, :cond_a

    .line 93
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 97
    :catchall_d
    :cond_a
    throw p0

    :cond_b
    :goto_7
    return-object v0
.end method

.method private static b(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/n1;->b(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    return v0

    .line 11
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "reachable timeout:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    return v0
.end method

.method public static c()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/base/utils/WifiUtil;->a:I

    return v0
.end method

.method private static c(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    goto/16 :goto_0

    :sswitch_0
    const/16 p0, 0xa5

    goto/16 :goto_0

    :sswitch_1
    const/16 p0, 0xa1

    goto/16 :goto_0

    :sswitch_2
    const/16 p0, 0x9d

    goto/16 :goto_0

    :sswitch_3
    const/16 p0, 0x99

    goto/16 :goto_0

    :sswitch_4
    const/16 p0, 0x95

    goto/16 :goto_0

    :sswitch_5
    const/16 p0, 0x68

    goto :goto_0

    :sswitch_6
    const/16 p0, 0x64

    goto :goto_0

    :sswitch_7
    const/16 p0, 0x40

    goto :goto_0

    :sswitch_8
    const/16 p0, 0x3c

    goto :goto_0

    :sswitch_9
    const/16 p0, 0x38

    goto :goto_0

    :sswitch_a
    const/16 p0, 0x34

    goto :goto_0

    :sswitch_b
    const/16 p0, 0x30

    goto :goto_0

    :sswitch_c
    const/16 p0, 0x2e

    goto :goto_0

    :sswitch_d
    const/16 p0, 0x2c

    goto :goto_0

    :sswitch_e
    const/16 p0, 0x2a

    goto :goto_0

    :sswitch_f
    const/16 p0, 0x28

    goto :goto_0

    :sswitch_10
    const/16 p0, 0x26

    goto :goto_0

    :sswitch_11
    const/16 p0, 0x24

    goto :goto_0

    :sswitch_12
    const/16 p0, 0xe

    goto :goto_0

    :sswitch_13
    const/16 p0, 0xd

    goto :goto_0

    :sswitch_14
    const/16 p0, 0xc

    goto :goto_0

    :sswitch_15
    const/16 p0, 0xb

    goto :goto_0

    :sswitch_16
    const/16 p0, 0xa

    goto :goto_0

    :sswitch_17
    const/16 p0, 0x9

    goto :goto_0

    :sswitch_18
    const/16 p0, 0x8

    goto :goto_0

    :sswitch_19
    const/4 p0, 0x7

    goto :goto_0

    :sswitch_1a
    const/4 p0, 0x6

    goto :goto_0

    :sswitch_1b
    const/4 p0, 0x5

    goto :goto_0

    :sswitch_1c
    const/4 p0, 0x4

    goto :goto_0

    :sswitch_1d
    const/4 p0, 0x3

    goto :goto_0

    :sswitch_1e
    const/4 p0, 0x2

    goto :goto_0

    :sswitch_1f
    const/4 p0, 0x1

    :goto_0
    return p0

    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_1f
        0x971 -> :sswitch_1e
        0x976 -> :sswitch_1d
        0x97b -> :sswitch_1c
        0x980 -> :sswitch_1b
        0x985 -> :sswitch_1a
        0x98a -> :sswitch_19
        0x98f -> :sswitch_18
        0x994 -> :sswitch_17
        0x999 -> :sswitch_16
        0x99e -> :sswitch_15
        0x9a3 -> :sswitch_14
        0x9a8 -> :sswitch_13
        0x9b4 -> :sswitch_12
        0x143c -> :sswitch_11
        0x1446 -> :sswitch_10
        0x1450 -> :sswitch_f
        0x145a -> :sswitch_e
        0x1464 -> :sswitch_d
        0x146e -> :sswitch_c
        0x1478 -> :sswitch_b
        0x148c -> :sswitch_a
        0x14a0 -> :sswitch_9
        0x14b4 -> :sswitch_8
        0x14c8 -> :sswitch_7
        0x157c -> :sswitch_6
        0x1590 -> :sswitch_5
        0x1671 -> :sswitch_4
        0x1685 -> :sswitch_3
        0x1699 -> :sswitch_2
        0x16ad -> :sswitch_1
        0x16c1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "http://"

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    .line 48
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const-string/jumbo p0, "unknown(0)"

    return-object p0

    .line 52
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 53
    iget v1, v1, Landroid/net/DhcpInfo;->gateway:I

    .line 54
    invoke-static {v1}, Lcom/tencent/mna/n1;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/tencent/mna/q3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Lcom/tencent/mna/w3;

    invoke-direct {v1, p0}, Lcom/tencent/mna/w3;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v1}, Lcom/tencent/mna/w3;->b()Lcom/tencent/mna/v3;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/tencent/mna/v3;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v1, :cond_1

    move-object v0, p0

    goto :goto_0

    .line 68
    :catch_0
    const-string/jumbo v0, "unknown(-4)"

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static c(Ljava/util/Set;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_5

    .line 3
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    .line 9
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/proc/net/arp"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    .line 12
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 16
    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 17
    array-length v3, v1

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    const/4 v3, 0x0

    .line 18
    aget-object v3, v1, v3

    .line 19
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    .line 20
    aget-object v5, v1, v5

    .line 21
    aget-object v1, v1, v4

    .line 22
    const-string v4, "0x0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "00:00:00:00:00:00"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 23
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRouterTerminalInfo getNetArp getNum:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 35
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRouterTerminalInfo getNetArp exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    .line 39
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    :goto_2
    return-object v0

    :goto_3
    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 44
    :catch_3
    :cond_4
    throw p0

    :cond_5
    :goto_5
    return-object v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->f(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->c(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "channel scanResult ex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d()Ljava/lang/String;
    .locals 7

    .line 18
    invoke-static {}, Lcom/tencent/mna/base/utils/c;->a()[Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 19
    array-length v2, v0

    if-gtz v2, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 23
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 24
    const-string/jumbo v6, "wlan1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 25
    array-length v4, v5

    const/4 v6, 0x1

    if-le v4, v6, :cond_1

    .line 26
    aget-object v0, v5, v6

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static e(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result p0

    const/4 v2, 0x4

    if-ne p0, v2, :cond_2

    .line 7
    const-string/jumbo p0, "wifi"

    .line 8
    invoke-virtual {v1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 15
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v2, :cond_1

    .line 17
    invoke-static {v1}, Lcom/tencent/mna/base/utils/WifiUtil;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getWifiCode exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private static f(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static g(Landroid/content/Context;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->f(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    if-ltz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "\""

    .line 1
    const-string v1, "0"

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->f(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    const-string p0, "<NOPERM SSID>"

    return-object p0

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 8
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->f(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 12
    const-string p0, "<NULL SSID>"

    :goto_0
    move-object v1, p0

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getRouterSSID, exception:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, "_"

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "-1_-1_-1_-1"

    if-eq v1, v2, :cond_0

    return-object v3

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    const-string p0, "getWifiSignal, error without perm"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    .line 9
    const-string p0, "-2_-2_-2_-2"

    return-object p0

    .line 11
    :cond_1
    const-string v1, "getWifiSignal, with perm"

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->f(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v3

    .line 18
    :cond_2
    invoke-static {p0, v1}, Lcom/tencent/mna/base/utils/WifiUtil;->a(Landroid/content/Context;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v4, "wifi"

    .line 23
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 24
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 26
    const-string v4, "scanResult is 0"

    invoke-static {v4}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 28
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 29
    iget v7, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7}, Lcom/tencent/mna/base/utils/WifiUtil;->c(I)I

    move-result v7

    .line 30
    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v5, v7

    .line 33
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_5

    .line 34
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43
    :cond_6
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 44
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 47
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    if-ne v5, v7, :cond_8

    move v1, v6

    goto :goto_1

    :cond_8
    add-int/lit8 v8, v5, -0x2

    if-lt v7, v8, :cond_7

    add-int/lit8 v8, v5, 0x2

    if-gt v7, v8, :cond_7

    add-int/2addr v2, v6

    goto :goto_1

    .line 56
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v3
.end method

.method public static j(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/base/utils/WifiUtil;->d:I

    if-ltz v0, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->k(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/tencent/mna/base/utils/WifiUtil;->b(II)I

    move-result p0

    return p0
.end method

.method public static k(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/base/utils/WifiUtil;->c:I

    if-gtz v0, :cond_0

    return v0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->f(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    if-ltz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized m(Landroid/content/Context;)V
    .locals 5

    const-string v0, "registerWifiSignalListener exception:"

    const-class v1, Lcom/tencent/mna/base/utils/WifiUtil;

    monitor-enter v1

    if-nez p0, :cond_0

    monitor-exit v1

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2
    const-string p0, "registerWifiSignalListener failed, looper is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    .line 8
    :cond_1
    :try_start_1
    sget-object v2, Lcom/tencent/mna/base/utils/WifiUtil;->b:Lcom/tencent/mna/base/utils/WifiUtil$WifiSignalChangeReceiver;

    if-nez v2, :cond_2

    .line 9
    new-instance v2, Lcom/tencent/mna/base/utils/WifiUtil$WifiSignalChangeReceiver;

    invoke-direct {v2}, Lcom/tencent/mna/base/utils/WifiUtil$WifiSignalChangeReceiver;-><init>()V

    sput-object v2, Lcom/tencent/mna/base/utils/WifiUtil;->b:Lcom/tencent/mna/base/utils/WifiUtil$WifiSignalChangeReceiver;

    .line 14
    const-string v2, "registerWifiSignalListener call"

    invoke-static {v2}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 16
    sget-object v2, Lcom/tencent/mna/base/utils/WifiUtil;->b:Lcom/tencent/mna/base/utils/WifiUtil$WifiSignalChangeReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 18
    const-string p0, "registerWifiSignalListener success"

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception p0

    .line 20
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
