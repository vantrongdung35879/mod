.class public Lcom/gcore/abase/NetworkStateChecker;
.super Ljava/lang/Object;
.source "NetworkStateChecker.java"


# static fields
.field private static final tag:Ljava/lang/String; = "NetworkStateChecker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CheckNetworkState(Landroid/content/Context;)I
    .locals 2

    .line 182
    sget-object v0, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/NetworkState;->ordinal()I

    .line 184
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_0

    .line 188
    sget-object p1, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p1

    return p1

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 192
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 213
    sget-object p1, Lcom/gcore/abase/NetworkState;->ReachableViaOthers:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p1

    goto :goto_1

    .line 207
    :cond_2
    sget-object p1, Lcom/gcore/abase/NetworkState;->ReachableViaWiFi:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p1

    goto :goto_1

    .line 202
    :cond_3
    sget-object p1, Lcom/gcore/abase/NetworkState;->ReachableViaWWAN:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p1

    goto :goto_1

    .line 195
    :cond_4
    :goto_0
    sget-object p1, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "check Get exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkStateChecker"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object p1, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p1

    :goto_1
    return p1
.end method

.method public GetBSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 126
    const-string p1, "None"

    return-object p1
.end method

.method public GetCurrentCarrier(Ljava/lang/String;)I
    .locals 1

    .line 157
    const-string v0, "46000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "46002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "46007"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 161
    :cond_0
    const-string v0, "46001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "46006"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 165
    :cond_1
    const-string v0, "46003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "46005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 169
    :cond_2
    const-string v0, "46004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 171
    sget-object p1, Lcom/gcore/abase/Carrier;->StateSpacecom:Lcom/gcore/abase/Carrier;

    goto :goto_3

    .line 175
    :cond_3
    sget-object p1, Lcom/gcore/abase/Carrier;->Unknown:Lcom/gcore/abase/Carrier;

    goto :goto_3

    .line 167
    :cond_4
    :goto_0
    sget-object p1, Lcom/gcore/abase/Carrier;->StateTelecom:Lcom/gcore/abase/Carrier;

    goto :goto_3

    .line 163
    :cond_5
    :goto_1
    sget-object p1, Lcom/gcore/abase/Carrier;->StateUnicom:Lcom/gcore/abase/Carrier;

    goto :goto_3

    .line 159
    :cond_6
    :goto_2
    sget-object p1, Lcom/gcore/abase/Carrier;->StateMobile:Lcom/gcore/abase/Carrier;

    .line 177
    :goto_3
    invoke-virtual {p1}, Lcom/gcore/abase/Carrier;->ordinal()I

    move-result p1

    return p1
.end method

.method public GetCurrentCarrierCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 132
    const-string v0, ""

    .line 134
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetCurrentCarrierCode Get exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetworkStateChecker"

    invoke-static {v1, p1}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public GetDetailNetworkState(Landroid/content/Context;)I
    .locals 3

    .line 52
    const-string v0, "NetworkStateChecker"

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 55
    const-string p1, "NetworkStateChecker connManager is null"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->NotReachable:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    .line 59
    :cond_0
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    const-string p1, "GetDetailNetworkState has not ACCESS_NETWORK_STATE permission"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->NotReachable:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    .line 64
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 65
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_3

    .line 73
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWiFi:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    .line 75
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_5

    .line 77
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    const/16 v1, 0x14

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 103
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_UNKNOWN:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    .line 98
    :pswitch_0
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_4G:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    .line 95
    :pswitch_1
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_3G:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    .line 84
    :pswitch_2
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_2G:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    .line 100
    :cond_4
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaWWAN_5G:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    .line 108
    :cond_5
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->ReachableViaOthers:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    .line 67
    :cond_6
    :goto_0
    const-string p1, "NetworkStateChecker ApolloNetInfo is null"

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->NotReachable:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check Get exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object p1, Lcom/gcore/abase/DetailNetworkState;->NotReachable:Lcom/gcore/abase/DetailNetworkState;

    invoke-virtual {p1}, Lcom/gcore/abase/DetailNetworkState;->ordinal()I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public GetSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 121
    const-string p1, "None"

    return-object p1
.end method
