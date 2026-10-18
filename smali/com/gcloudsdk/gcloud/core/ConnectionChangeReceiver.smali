.class public Lcom/gcloudsdk/gcloud/core/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# static fields
.field private static LastState:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState; = null

.field private static final TAG:Ljava/lang/String; = "ConnectChangeReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget-object v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->NotReachable:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    sput-object v0, Lcom/gcloudsdk/gcloud/core/ConnectionChangeReceiver;->LastState:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 20
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 21
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 22
    const-string p2, "ConnectChangeReceiver"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 68
    sget-object v0, Lcom/gcloudsdk/gcloud/core/ConnectionChangeReceiver;->LastState:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    sget-object v1, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ReachableViaOthers:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    if-eq v0, v1, :cond_7

    .line 70
    sget-object v0, Lcom/gcloudsdk/gcloud/core/ConnectionChangeReceiver;->LastState:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    sget-object v1, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->NotReachable:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    if-eq v0, v1, :cond_1

    .line 73
    sget-object v0, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    sget-object v1, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->NotReachable:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    invoke-virtual {v1}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gsdk/gcloud/GCloud;->NetworkStateChangeNotify(I)V

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network Type : Other Network Type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object p1, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ReachableViaOthers:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    sput-object p1, Lcom/gcloudsdk/gcloud/core/ConnectionChangeReceiver;->LastState:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    .line 77
    sget-object p1, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    sget-object p2, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ReachableViaOthers:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    invoke-virtual {p2}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gsdk/gcloud/GCloud;->NetworkStateChangeNotify(I)V

    goto :goto_1

    .line 53
    :cond_2
    sget-object p1, Lcom/gcloudsdk/gcloud/core/ConnectionChangeReceiver;->LastState:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    sget-object v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ReachableViaWiFi:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    if-eq p1, v0, :cond_7

    .line 55
    sget-object p1, Lcom/gcloudsdk/gcloud/core/ConnectionChangeReceiver;->LastState:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    sget-object v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->NotReachable:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    if-eq p1, v0, :cond_3

    .line 58
    sget-object p1, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    sget-object v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->NotReachable:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    invoke-virtual {v0}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gsdk/gcloud/GCloud;->NetworkStateChangeNotify(I)V

    .line 60
    :cond_3
    const-string p1, "Network State change to TYPE_WIFI"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object p1, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ReachableViaWiFi:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    sput-object p1, Lcom/gcloudsdk/gcloud/core/ConnectionChangeReceiver;->LastState:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    .line 62
    sget-object p1, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    sget-object p2, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ReachableViaWiFi:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    invoke-virtual {p2}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gsdk/gcloud/GCloud;->NetworkStateChangeNotify(I)V

    goto :goto_1

    .line 38
    :cond_4
    sget-object p1, Lcom/gcloudsdk/gcloud/core/ConnectionChangeReceiver;->LastState:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    sget-object v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ReachableViaWWAN:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    if-eq p1, v0, :cond_7

    .line 40
    sget-object p1, Lcom/gcloudsdk/gcloud/core/ConnectionChangeReceiver;->LastState:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    sget-object v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->NotReachable:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    if-eq p1, v0, :cond_5

    .line 43
    sget-object p1, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    sget-object v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->NotReachable:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    invoke-virtual {v0}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gsdk/gcloud/GCloud;->NetworkStateChangeNotify(I)V

    .line 45
    :cond_5
    const-string p1, "Network State change to TYPE_MOBILE"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object p1, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ReachableViaWWAN:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    sput-object p1, Lcom/gcloudsdk/gcloud/core/ConnectionChangeReceiver;->LastState:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    .line 47
    sget-object p1, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    sget-object p2, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ReachableViaWWAN:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    invoke-virtual {p2}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gsdk/gcloud/GCloud;->NetworkStateChangeNotify(I)V

    goto :goto_1

    .line 24
    :cond_6
    :goto_0
    sget-object p1, Lcom/gcloudsdk/gcloud/core/ConnectionChangeReceiver;->LastState:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    sget-object v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->NotReachable:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    if-eq p1, v0, :cond_7

    .line 26
    const-string p1, "ApolloNetInfo : null or disConnected. Network State change to TYPE_None"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object p1, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->NotReachable:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    sput-object p1, Lcom/gcloudsdk/gcloud/core/ConnectionChangeReceiver;->LastState:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    .line 28
    sget-object p1, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    sget-object p2, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->NotReachable:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    invoke-virtual {p2}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gsdk/gcloud/GCloud;->NetworkStateChangeNotify(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public runNetworkStateChange(I)V
    .locals 0

    return-void
.end method
