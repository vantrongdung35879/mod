.class public Lcom/intlgame/core/dns/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# static fields
.field private static LastNet:Lcom/intlgame/core/dns/NetworkType;

.field public static networkStateInterface:Lcom/intlgame/core/dns/NetworkStateInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_UNKNOWN:Lcom/intlgame/core/dns/NetworkType;

    sput-object v0, Lcom/intlgame/core/dns/NetworkStateReceiver;->LastNet:Lcom/intlgame/core/dns/NetworkType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static GetNetworkType(Landroid/content/Context;)Lcom/intlgame/core/dns/NetworkType;
    .locals 2

    .line 55
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    .line 58
    const-string p0, "NetworkStateChecker connManager is null"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    .line 59
    sget-object p0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_UNKNOWN:Lcom/intlgame/core/dns/NetworkType;

    return-object p0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 64
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 72
    sget-object p0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_WIFI:Lcom/intlgame/core/dns/NetworkType;

    return-object p0

    .line 74
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_4

    .line 76
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3

    packed-switch p0, :pswitch_data_0

    .line 101
    sget-object p0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_MOBILE:Lcom/intlgame/core/dns/NetworkType;

    return-object p0

    .line 97
    :pswitch_0
    sget-object p0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_4G:Lcom/intlgame/core/dns/NetworkType;

    return-object p0

    .line 94
    :pswitch_1
    sget-object p0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_3G:Lcom/intlgame/core/dns/NetworkType;

    return-object p0

    .line 83
    :pswitch_2
    sget-object p0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_2G:Lcom/intlgame/core/dns/NetworkType;

    return-object p0

    .line 99
    :cond_3
    sget-object p0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_5G:Lcom/intlgame/core/dns/NetworkType;

    return-object p0

    .line 106
    :cond_4
    sget-object p0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_UNKNOWN:Lcom/intlgame/core/dns/NetworkType;

    return-object p0

    .line 66
    :cond_5
    :goto_0
    const-string p0, "NetworkStateChecker netInfo is null"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    .line 67
    sget-object p0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_UNKNOWN:Lcom/intlgame/core/dns/NetworkType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 112
    const-string v0, "check Get exception"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception Track: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 114
    sget-object p0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_UNKNOWN:Lcom/intlgame/core/dns/NetworkType;

    return-object p0

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

.method public static GetSimCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 126
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x5

    .line 128
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_1
    :goto_0
    const-string p0, "-1"

    return-object p0
.end method

.method public static SaveNetworkType(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-static {p0}, Lcom/intlgame/core/dns/NetworkStateReceiver;->GetNetworkType(Landroid/content/Context;)Lcom/intlgame/core/dns/NetworkType;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/intlgame/core/dns/NetworkStateReceiver;->LastNet:Lcom/intlgame/core/dns/NetworkType;

    if-eq v0, v1, :cond_0

    .line 41
    sput-object v0, Lcom/intlgame/core/dns/NetworkStateReceiver;->LastNet:Lcom/intlgame/core/dns/NetworkType;

    .line 42
    invoke-static {p0}, Lcom/intlgame/core/dns/NetworkStateReceiver;->GetSimCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-virtual {v0}, Lcom/intlgame/core/dns/NetworkType;->ordinal()I

    move-result v1

    invoke-static {v1, p0}, Lcom/intlgame/tools/IT;->notifyNetworkChanged(ILjava/lang/String;)V

    .line 45
    sget-object p0, Lcom/intlgame/core/dns/NetworkStateReceiver;->networkStateInterface:Lcom/intlgame/core/dns/NetworkStateInterface;

    if-eqz p0, :cond_0

    .line 46
    invoke-interface {p0, v0}, Lcom/intlgame/core/dns/NetworkStateInterface;->OnRecvNetworkStateChanged(Lcom/intlgame/core/dns/NetworkType;)V

    :cond_0
    return-void
.end method

.method public static SetNetworkStateInterface(Lcom/intlgame/core/dns/NetworkStateInterface;)V
    .locals 1

    .line 29
    sput-object p0, Lcom/intlgame/core/dns/NetworkStateReceiver;->networkStateInterface:Lcom/intlgame/core/dns/NetworkStateInterface;

    if-eqz p0, :cond_0

    .line 32
    sget-object v0, Lcom/intlgame/core/dns/NetworkStateReceiver;->LastNet:Lcom/intlgame/core/dns/NetworkType;

    invoke-interface {p0, v0}, Lcom/intlgame/core/dns/NetworkStateInterface;->OnRecvNetworkStateChanged(Lcom/intlgame/core/dns/NetworkType;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 24
    const-string p2, "network changed"

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Lcom/intlgame/core/dns/NetworkStateReceiver;->SaveNetworkType(Landroid/content/Context;)V

    return-void
.end method
