.class public final Lcom/tencent/mna/base/utils/c;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/utils/c$a;
    }
.end annotation


# direct methods
.method private static a(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_4
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Landroid/net/NetworkInfo;)I
    .locals 3

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x3

    :cond_0
    if-eq v1, v0, :cond_2

    if-eqz v1, :cond_2

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 15
    :cond_2
    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 21
    :cond_3
    const-string p1, "phone"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_5

    .line 23
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1

    invoke-static {p1}, Lcom/tencent/mna/base/utils/c;->a(I)I

    move-result p1

    if-eqz p1, :cond_4

    return p1

    :cond_4
    if-nez v1, :cond_5

    .line 28
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/mna/base/utils/c$a;
    .locals 10

    .line 104
    new-instance v0, Lcom/tencent/mna/base/utils/c$a;

    invoke-direct {v0}, Lcom/tencent/mna/base/utils/c$a;-><init>()V

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    return-object v0

    .line 112
    :cond_0
    sget v2, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_b

    .line 113
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object p0

    .line 115
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_c

    .line 118
    aget-object v4, p0, v3

    .line 119
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 120
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 121
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 123
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 125
    const-string v7, ""

    .line 126
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 127
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 128
    instance-of v9, v8, Ljava/net/Inet6Address;

    if-nez v9, :cond_1

    invoke-virtual {v8}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_1

    .line 129
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    :cond_2
    if-eqz v7, :cond_a

    .line 133
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    .line 135
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-eqz v6, :cond_9

    const/4 v8, 0x1

    if-eq v6, v8, :cond_7

    const/4 v4, 0x7

    if-eq v6, v4, :cond_6

    const/16 v4, 0x9

    if-eq v6, v4, :cond_5

    const/16 v4, 0x11

    if-eq v6, v4, :cond_4

    .line 165
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 166
    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 167
    :cond_3
    iget v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 168
    iput-object v7, v0, Lcom/tencent/mna/base/utils/c$a;->g:Ljava/lang/String;

    goto :goto_1

    .line 169
    :cond_4
    iget v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    or-int/2addr v4, v8

    iput v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 170
    iput-object v7, v0, Lcom/tencent/mna/base/utils/c$a;->b:Ljava/lang/String;

    goto :goto_1

    .line 171
    :cond_5
    iget v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 172
    iput-object v7, v0, Lcom/tencent/mna/base/utils/c$a;->c:Ljava/lang/String;

    goto :goto_1

    .line 173
    :cond_6
    iget v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 174
    iput-object v7, v0, Lcom/tencent/mna/base/utils/c$a;->f:Ljava/lang/String;

    goto :goto_1

    .line 175
    :cond_7
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 177
    const-string/jumbo v5, "wlan0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 178
    iget v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 179
    iput-object v7, v0, Lcom/tencent/mna/base/utils/c$a;->d:Ljava/lang/String;

    goto :goto_1

    .line 180
    :cond_8
    const-string/jumbo v5, "wlan1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 181
    iget v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 182
    iput-object v7, v0, Lcom/tencent/mna/base/utils/c$a;->g:Ljava/lang/String;

    goto :goto_1

    .line 183
    :cond_9
    iget v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v0, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 184
    iput-object v7, v0, Lcom/tencent/mna/base/utils/c$a;->e:Ljava/lang/String;

    :cond_a
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 223
    :cond_b
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->b(Landroid/content/Context;)Lcom/tencent/mna/base/utils/c$a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDtTypeInfo Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    .line 29
    const-string p0, "0"

    return-object p0

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 35
    :cond_1
    invoke-static {p0}, Lcom/tencent/mna/base/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Z)Ljava/lang/String;
    .locals 4

    .line 36
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 38
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 45
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p0, :cond_2

    .line 46
    instance-of v3, v2, Ljava/net/Inet4Address;

    if-nez v3, :cond_3

    :cond_2
    if-nez p0, :cond_1

    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    .line 48
    :cond_3
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 59
    :catchall_0
    :cond_4
    const-string p0, "0.0.0.0"

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->a(Landroid/content/Context;)Lcom/tencent/mna/base/utils/c$a;

    move-result-object p0

    .line 61
    invoke-static {p0, p1}, Lcom/tencent/mna/base/utils/c;->a(Lcom/tencent/mna/base/utils/c$a;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/tencent/mna/base/utils/c$a;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mna/base/utils/c$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mna/n1;->l(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    const-string v1, "CHECK_ALL_VPN_IP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_2

    .line 68
    iget-object p0, p0, Lcom/tencent/mna/base/utils/c$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception p0

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "isVpnOpen exception:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v0
.end method

.method public static a()[Ljava/lang/String;
    .locals 7

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 77
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 79
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 80
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 82
    instance-of v5, v4, Ljava/net/Inet6Address;

    if-eqz v5, :cond_2

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllNetInterface, available interface:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", address:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAllNetInterface, exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    .line 98
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAllNetInterface, all interface:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 101
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    .line 103
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    return-object v2
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x7

    if-eq p1, p0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->j(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 38
    :cond_1
    invoke-static {}, Lcom/tencent/mna/base/utils/b;->d()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Lcom/tencent/mna/base/utils/c$a;
    .locals 7

    .line 39
    invoke-static {}, Lcom/tencent/mna/base/utils/c;->a()[Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/tencent/mna/base/utils/c$a;

    invoke-direct {v1}, Lcom/tencent/mna/base/utils/c$a;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 44
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 45
    aget-object v3, v0, v2

    .line 46
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 47
    const-string/jumbo v5, "tun"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 48
    array-length v3, v4

    if-le v3, v6, :cond_7

    .line 49
    iget v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    or-int/2addr v3, v6

    iput v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 50
    aget-object v3, v4, v6

    iput-object v3, v1, Lcom/tencent/mna/base/utils/c$a;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 52
    :cond_1
    const-string v5, "eth"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p0, :cond_2

    .line 53
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    array-length v3, v4

    if-le v3, v6, :cond_7

    .line 54
    iget v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 55
    aget-object v3, v4, v6

    iput-object v3, v1, Lcom/tencent/mna/base/utils/c$a;->c:Ljava/lang/String;

    goto :goto_1

    .line 57
    :cond_3
    const-string/jumbo v5, "wlan0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 58
    array-length v3, v4

    if-le v3, v6, :cond_7

    .line 59
    iget v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 60
    aget-object v3, v4, v6

    iput-object v3, v1, Lcom/tencent/mna/base/utils/c$a;->d:Ljava/lang/String;

    goto :goto_1

    .line 62
    :cond_4
    const-string/jumbo v5, "wlan1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 63
    array-length v3, v4

    if-le v3, v6, :cond_7

    .line 64
    iget v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 65
    aget-object v3, v4, v6

    iput-object v3, v1, Lcom/tencent/mna/base/utils/c$a;->g:Ljava/lang/String;

    goto :goto_1

    .line 67
    :cond_5
    const-string v5, "rmnet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 68
    array-length v3, v4

    if-le v3, v6, :cond_7

    .line 69
    iget v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 70
    aget-object v3, v4, v6

    iput-object v3, v1, Lcom/tencent/mna/base/utils/c$a;->e:Ljava/lang/String;

    goto :goto_1

    .line 72
    :cond_6
    const-string v5, "bt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    array-length v3, v4

    if-le v3, v6, :cond_7

    .line 73
    iget v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/tencent/mna/base/utils/c$a;->a:I

    .line 74
    aget-object v3, v4, v6

    iput-object v3, v1, Lcom/tencent/mna/base/utils/c$a;->f:Ljava/lang/String;

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1
    const-string/jumbo p0, "unknown"

    goto :goto_0

    .line 25
    :pswitch_0
    const-string p0, "5G"

    goto :goto_0

    .line 26
    :pswitch_1
    const-string p0, "bluetooth"

    goto :goto_0

    .line 27
    :pswitch_2
    const-string p0, "ethernet"

    goto :goto_0

    .line 28
    :pswitch_3
    const-string/jumbo p0, "wifi"

    goto :goto_0

    .line 29
    :pswitch_4
    const-string p0, "4G"

    goto :goto_0

    .line 30
    :pswitch_5
    const-string p0, "3G"

    goto :goto_0

    .line 31
    :pswitch_6
    const-string p0, "2G"

    goto :goto_0

    .line 32
    :pswitch_7
    const-string/jumbo p0, "unknown\u6216\u65e0\u7f51\u7edc"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_4

    .line 11
    invoke-static {p0, v1}, Lcom/tencent/mna/base/utils/c;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)I

    move-result v0

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/16 v2, 0x9

    if-ne p0, v2, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x7

    if-ne p0, v1, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNetworkState exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return v0
.end method

.method public static c(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p0, 0x7

    if-eq p1, p0, :cond_1

    return v0

    .line 21
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->k(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 26
    :cond_1
    invoke-static {}, Lcom/tencent/mna/base/utils/b;->f()I

    move-result p0

    return p0
.end method

.method public static c(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(I)Z
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(I)Z

    move-result p0

    return p0
.end method

.method public static e(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->d(I)Z

    move-result p0

    return p0
.end method

.method public static f(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->g(I)Z

    move-result p0

    return p0
.end method

.method public static g(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->h(I)Z

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->m(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/mna/base/utils/b;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static h(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
