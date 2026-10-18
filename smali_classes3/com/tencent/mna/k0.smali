.class Lcom/tencent/mna/k0;
.super Lcom/tencent/mna/b;
.source "DualWifiNetworkBinding.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/mna/b;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/mna/l0;

    invoke-direct {v0}, Lcom/tencent/mna/l0;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/base/vendor/h;->a(Lcom/tencent/mna/i1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Z
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/mna/base/vendor/h;->a(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/content/Context;Landroid/net/Network;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/tencent/mna/base/vendor/h;->a(Landroid/content/Context;Landroid/net/Network;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "TYPE_WIFI_WIFI"

    return-object v0
.end method

.method public c(I)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/tencent/mna/base/utils/c;->h(I)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 0

    .line 1
    sget-boolean p1, Lcom/tencent/mna/t0;->i:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/tencent/mna/t0;->h:I

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/tencent/mna/base/vendor/h;->b(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public e(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/tencent/mna/base/vendor/h;->c(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public f(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/tencent/mna/base/vendor/h;->d(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
