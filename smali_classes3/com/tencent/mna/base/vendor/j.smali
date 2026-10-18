.class Lcom/tencent/mna/base/vendor/j;
.super Lcom/tencent/mna/base/vendor/a;
.source "XiaomiVendor.java"


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

    invoke-virtual {p0}, Lcom/tencent/mna/base/vendor/j;->b()Lcom/tencent/mna/base/vendor/d$a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mna/base/vendor/d$a;->mOrigName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mna/v;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mna/base/vendor/j;->b()Lcom/tencent/mna/base/vendor/d$a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mna/base/vendor/d$a;->mAlternateName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mna/v;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/mna/base/utils/a;->e:Ljava/lang/String;

    .line 3
    const-string v1, "begonia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mna/base/utils/a;->f:Ljava/lang/String;

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
    sget-object v0, Lcom/tencent/mna/base/vendor/d$a;->XIAO_MI:Lcom/tencent/mna/base/vendor/d$a;

    return-object v0
.end method

.method protected d(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "slave_wifi_on"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public e(Landroid/content/Context;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cloud_slave_wifi_support"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "config_slave_wifi_support"

    const-string v3, "bool"

    const-string v4, "android.miui"

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public f(Landroid/content/Context;)I
    .locals 0

    .line 1
    const-string p1, "TRANSPORT_SLAVE_WIFI"

    invoke-virtual {p0, p1}, Lcom/tencent/mna/base/vendor/a;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
