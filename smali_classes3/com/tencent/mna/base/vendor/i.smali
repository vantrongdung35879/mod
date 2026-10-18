.class Lcom/tencent/mna/base/vendor/i;
.super Lcom/tencent/mna/base/vendor/a;
.source "VivoVendor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/mna/base/vendor/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mna/base/vendor/i;->b()Lcom/tencent/mna/base/vendor/d$a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mna/base/vendor/d$a;->mOrigName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mna/v;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mna/base/vendor/i;->b()Lcom/tencent/mna/base/vendor/d$a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mna/base/vendor/d$a;->mAlternateName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mna/v;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/mna/base/utils/a;->e:Ljava/lang/String;

    .line 3
    const-string v1, "PD1824"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public b()Lcom/tencent/mna/base/vendor/d$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/base/vendor/d$a;->VIVO:Lcom/tencent/mna/base/vendor/d$a;

    return-object v0
.end method

.method protected d(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 2
    const-string v1, "android.net.wifi.WifiManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDualWifiEnabledState"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public e(Landroid/content/Context;)Z
    .locals 3

    .line 1
    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 2
    const-string v0, "android.net.wifi.WifiManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "supportDualWifi"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Landroid/content/Context;)I
    .locals 0

    .line 1
    const-string p1, "TRANSPORT_EXTWIFI"

    invoke-virtual {p0, p1}, Lcom/tencent/mna/base/vendor/a;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
