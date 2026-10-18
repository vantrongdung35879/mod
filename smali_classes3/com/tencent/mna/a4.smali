.class Lcom/tencent/mna/a4;
.super Lcom/tencent/mna/b;
.source "WifiMobileNetworkBinding.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/mna/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/mna/b;->a(ILandroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/content/Context;Landroid/net/Network;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "TYPE_WIFI_MOBILE"

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

    const/4 p1, 0x1

    return p1
.end method

.method public e(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public f(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
