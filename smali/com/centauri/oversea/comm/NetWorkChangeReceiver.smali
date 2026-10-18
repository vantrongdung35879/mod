.class public Lcom/centauri/oversea/comm/NetWorkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkChangeReceiver.java"


# static fields
.field public static final NETWORK_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final TAG:Ljava/lang/String; = "NetWorkChangeReceiver"


# instance fields
.field private final NETWORK_CHANGE_DURATION:J

.field private lastWifiConnectedTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 25
    iput-wide v0, p0, Lcom/centauri/oversea/comm/NetWorkChangeReceiver;->NETWORK_CHANGE_DURATION:J

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/centauri/oversea/comm/NetWorkChangeReceiver;->lastWifiConnectedTime:J

    return-void
.end method

.method public static pingReport()V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/centauri/oversea/comm/NetWorkChangeReceiver$1;

    invoke-direct {v1}, Lcom/centauri/oversea/comm/NetWorkChangeReceiver$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 31
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 33
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 36
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 41
    iget-wide v0, p0, Lcom/centauri/oversea/comm/NetWorkChangeReceiver;->lastWifiConnectedTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 42
    iput-wide p1, p0, Lcom/centauri/oversea/comm/NetWorkChangeReceiver;->lastWifiConnectedTime:J

    .line 43
    invoke-static {}, Lcom/centauri/oversea/comm/NetWorkChangeReceiver;->pingReport()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/centauri/oversea/comm/NetWorkChangeReceiver;->pingReport()V

    :cond_1
    :goto_0
    return-void
.end method
