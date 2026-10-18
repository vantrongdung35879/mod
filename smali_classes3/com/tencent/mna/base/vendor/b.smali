.class Lcom/tencent/mna/base/vendor/b;
.super Lcom/tencent/mna/base/vendor/a;
.source "AsusVendor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/mna/base/vendor/a;-><init>()V

    return-void
.end method

.method private c()Z
    .locals 2

    .line 1
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mna/base/vendor/b;->b()Lcom/tencent/mna/base/vendor/d$a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mna/base/vendor/d$a;->mOrigName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mna/v;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/mna/base/utils/a;->e:Ljava/lang/String;

    .line 2
    const-string v1, "ASUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public a(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Z
    .locals 2

    .line 10
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 11
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lcom/tencent/mna/base/vendor/b;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 13
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 15
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 17
    invoke-virtual {p1, v0, p2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/content/Context;Landroid/net/Network;)Z
    .locals 4

    const-string v0, "AsusVendor checkAuxNetwork name:"

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/mna/base/vendor/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VICE_WIFI"

    goto :goto_0

    :cond_0
    const-string v1, "WIFI_ASUS"

    .line 4
    :goto_0
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 5
    sget v2, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b()Lcom/tencent/mna/base/vendor/d$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/base/vendor/d$a;->ASUS:Lcom/tencent/mna/base/vendor/d$a;

    return-object v0
.end method

.method public c(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected d(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
