.class public Lcom/centauri/oversea/newnetwork/http/DnsManager;
.super Ljava/lang/Object;
.source "DnsManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DnsManager"

.field private static volatile instance:Lcom/centauri/oversea/newnetwork/http/DnsManager;


# instance fields
.field private defaultHostList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private netMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager;->netMap:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager;->defaultHostList:Ljava/util/List;

    .line 36
    const-string v1, "hk.api.unipay.qq.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager;->defaultHostList:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/centauri/oversea/comm/CTITools;->getCentuarimds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".gtimg.cn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager;->defaultHostList:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "www."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/CTITools;->getCentuarimds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "buy.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/centauri/oversea/newnetwork/http/DnsManager;)Ljava/util/HashMap;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager;->netMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/centauri/oversea/newnetwork/http/DnsManager;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager;->defaultHostList:Ljava/util/List;

    return-object p0
.end method

.method public static singleton()Lcom/centauri/oversea/newnetwork/http/DnsManager;
    .locals 2

    .line 42
    sget-object v0, Lcom/centauri/oversea/newnetwork/http/DnsManager;->instance:Lcom/centauri/oversea/newnetwork/http/DnsManager;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/centauri/oversea/newnetwork/http/DnsManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/centauri/oversea/newnetwork/http/DnsManager;->instance:Lcom/centauri/oversea/newnetwork/http/DnsManager;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/centauri/oversea/newnetwork/http/DnsManager;

    invoke-direct {v1}, Lcom/centauri/oversea/newnetwork/http/DnsManager;-><init>()V

    sput-object v1, Lcom/centauri/oversea/newnetwork/http/DnsManager;->instance:Lcom/centauri/oversea/newnetwork/http/DnsManager;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/centauri/oversea/newnetwork/http/DnsManager;->instance:Lcom/centauri/oversea/newnetwork/http/DnsManager;

    return-object v0
.end method


# virtual methods
.method public clearJavaDnsCache()V
    .locals 4

    .line 195
    const-string v0, "clearJavaDnsCache"

    const-string v1, "DnsManager"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-class v0, Ljava/net/InetAddress;

    .line 198
    :try_start_0
    const-string v2, "clearDnsCache"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    const-string v0, "clearJavaDnsCache InvocationTargetException."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :catch_1
    const-string v0, "clearJavaDnsCache IllegalAccessException."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :catch_2
    const-string v0, "clearJavaDnsCache NoSuchMethodException."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public ipWithHost(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    const-string v0, "DnsManager"

    const-string v1, "ipWithHost"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 78
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/centauri/oversea/newnetwork/http/DnsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/centauri/oversea/newnetwork/http/DnsManager$1;-><init>(Lcom/centauri/oversea/newnetwork/http/DnsManager;Ljava/util/List;)V

    const-string/jumbo p1, "thread-dns-ipWithHost"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public ipWithUrl(Ljava/lang/String;)V
    .locals 2

    .line 104
    const-string v0, "DnsManager"

    const-string v1, "ipWithUrl"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/centauri/oversea/newnetwork/http/DnsManager$2;

    invoke-direct {v1, p0, p1}, Lcom/centauri/oversea/newnetwork/http/DnsManager$2;-><init>(Lcom/centauri/oversea/newnetwork/http/DnsManager;Ljava/lang/String;)V

    const-string/jumbo p1, "thread-dns-ipWithUrl"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public prefetchDns(Ljava/lang/String;)V
    .locals 2

    .line 130
    const-string v0, "DnsManager"

    const-string v1, "prefetchDns"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/centauri/oversea/newnetwork/http/DnsManager$3;

    invoke-direct {v1, p0, p1}, Lcom/centauri/oversea/newnetwork/http/DnsManager$3;-><init>(Lcom/centauri/oversea/newnetwork/http/DnsManager;Ljava/lang/String;)V

    const-string/jumbo p1, "thread-dns-prefetchDns1"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public prefetchDns(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    const-string v0, "DnsManager"

    const-string v1, "prefetchDns with hostList"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 153
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/centauri/oversea/newnetwork/http/DnsManager$4;

    invoke-direct {v1, p0, p1}, Lcom/centauri/oversea/newnetwork/http/DnsManager$4;-><init>(Lcom/centauri/oversea/newnetwork/http/DnsManager;Ljava/util/List;)V

    const-string/jumbo p1, "thread-dns-prefetchDns2"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public prefetchDnsDefault()V
    .locals 3

    .line 174
    const-string v0, "DnsManager"

    const-string v1, "prefetchDnsDefault"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager;->defaultHostList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/centauri/oversea/newnetwork/http/DnsManager$5;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/newnetwork/http/DnsManager$5;-><init>(Lcom/centauri/oversea/newnetwork/http/DnsManager;)V

    const-string/jumbo v2, "thread-dns-prefetchDnsDefault"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public queryIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager;->netMap:Ljava/util/HashMap;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/centauri/oversea/newnetwork/http/DnsManager;->netMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 66
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    return-object v1
.end method
