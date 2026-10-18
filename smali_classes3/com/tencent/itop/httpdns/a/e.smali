.class public final Lcom/tencent/itop/httpdns/a/e;
.super Ljava/lang/Object;
.source "HttpDnsManager.java"


# static fields
.field public static volatile a:Z = false

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 0

    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/itop/httpdns/a/e;->b(Landroid/content/Context;Ljava/lang/String;ZI)V

    const/4 p0, -0x1

    const/4 p1, 0x1

    .line 32
    invoke-static {p1, p0}, Lcom/tencent/itop/httpdns/base/b/c;->a(II)V

    .line 34
    sput-boolean p1, Lcom/tencent/itop/httpdns/a/e;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZII)V
    .locals 0

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/itop/httpdns/a/e;->b(Landroid/content/Context;Ljava/lang/String;ZI)V

    const/4 p0, 0x2

    .line 39
    invoke-static {p0, p4}, Lcom/tencent/itop/httpdns/base/b/c;->a(II)V

    const/4 p0, 0x1

    .line 41
    sput-boolean p0, Lcom/tencent/itop/httpdns/a/e;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/tencent/itop/httpdns/a/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/tencent/itop/httpdns/a/e;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 84
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 86
    :cond_1
    new-instance v0, Lcom/tencent/itop/httpdns/a/c/a;

    sget-object v1, Lcom/tencent/itop/httpdns/a/e;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/itop/httpdns/a/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/itop/httpdns/a/c/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 87
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v3}, Lcom/tencent/itop/httpdns/base/log/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "MSDKGetHostByName"

    invoke-static {v0, p0}, Lcom/tencent/itop/httpdns/base/b/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 3

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/itop/httpdns/a/e;->b:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/tencent/itop/httpdns/a/a;

    invoke-direct {v0}, Lcom/tencent/itop/httpdns/a/a;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x3

    .line 71
    invoke-static {p0}, Lcom/tencent/itop/httpdns/base/log/b;->a(I)V

    .line 74
    :cond_1
    invoke-static {p1}, Lcom/tencent/itop/httpdns/a/a/b;->a(Ljava/lang/String;)V

    .line 75
    invoke-static {p3}, Lcom/tencent/itop/httpdns/a/a/b;->a(I)V

    return-void
.end method

.method public static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 49
    sget-object v0, Lcom/tencent/itop/httpdns/a/e;->b:Landroid/content/Context;

    const-string v1, "0"

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 54
    new-instance v0, Lcom/tencent/itop/httpdns/a/b;

    invoke-direct {v0, p0}, Lcom/tencent/itop/httpdns/a/b;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Lcom/tencent/itop/httpdns/a/b;->run()V

    .line 56
    invoke-virtual {v0}, Lcom/tencent/itop/httpdns/a/b;->a()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/itop/httpdns/a/e;->a(Ljava/util/Map;)V

    .line 57
    invoke-virtual {v0}, Lcom/tencent/itop/httpdns/a/b;->b()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 59
    :catchall_0
    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50
    :cond_1
    :goto_0
    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
