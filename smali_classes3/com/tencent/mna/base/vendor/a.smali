.class abstract Lcom/tencent/mna/base/vendor/a;
.super Ljava/lang/Object;
.source "AbsVendor.java"

# interfaces
.implements Lcom/tencent/mna/base/vendor/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .locals 2

    .line 12
    :try_start_0
    const-string v0, "android.net.NetworkCapabilities"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mna/base/vendor/a;->b()Lcom/tencent/mna/base/vendor/d$a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mna/base/vendor/d$a;->mOrigName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getTransportTypeByField failed for exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    const/16 p1, -0x80

    return p1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/mna/base/vendor/a;->e(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Z
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lcom/tencent/mna/base/vendor/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 6
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/tencent/mna/base/vendor/a;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 8
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 10
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public a(Landroid/content/Context;Landroid/net/Network;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract b()Lcom/tencent/mna/base/vendor/d$a;
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/mna/base/vendor/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/mna/base/vendor/a;->d(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/mna/base/vendor/a;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/utils/WifiUtil;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/n1;->q(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract d(Landroid/content/Context;)Z
.end method

.method protected abstract e(Landroid/content/Context;)Z
.end method

.method protected abstract f(Landroid/content/Context;)I
.end method
