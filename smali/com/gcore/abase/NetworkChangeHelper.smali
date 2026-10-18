.class public Lcom/gcore/abase/NetworkChangeHelper;
.super Ljava/lang/Object;
.source "NetworkChangeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;,
        Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;
    }
.end annotation


# static fields
.field public static Instance:Lcom/gcore/abase/NetworkChangeHelper; = null

.field private static final NETWORK_STATE_AVAILABLE_MOBILE:I = 0x1

.field private static final NETWORK_STATE_AVAILABLE_OTHER:I = 0x3

.field private static final NETWORK_STATE_AVAILABLE_WIFI:I = 0x2

.field private static final NETWORK_STATE_UNAVAILABLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkChangeHelper"


# instance fields
.field private enableCallback:Z

.field private mLastState:I

.field private mNetworkChangeCallback:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;

.field private mNetworkChangeReceiver:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/gcore/abase/NetworkChangeHelper;

    invoke-direct {v0}, Lcom/gcore/abase/NetworkChangeHelper;-><init>()V

    sput-object v0, Lcom/gcore/abase/NetworkChangeHelper;->Instance:Lcom/gcore/abase/NetworkChangeHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->enableCallback:Z

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->mLastState:I

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->mNetworkChangeReceiver:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;

    .line 29
    iput-object v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->mNetworkChangeCallback:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/gcore/abase/NetworkChangeHelper;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/gcore/abase/NetworkChangeHelper;->handleNetworkChange(I)V

    return-void
.end method

.method private handleNetworkChange(I)V
    .locals 3

    .line 91
    iget v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->mLastState:I

    const-string v1, "NetworkChangeHelper"

    if-ne v0, p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Network State not change:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    sget-object v2, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    invoke-virtual {v2}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/gcore/abase/GCloudCore;->NetworkStateChangeNotify(I)V

    .line 101
    :cond_1
    iput p1, p0, Lcom/gcore/abase/NetworkChangeHelper;->mLastState:I

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 115
    :cond_2
    const-string p1, "Network State change to TYPE_OTHER"

    invoke-static {v1, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object p1, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    sget-object v0, Lcom/gcore/abase/NetworkState;->ReachableViaOthers:Lcom/gcore/abase/NetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gcore/abase/GCloudCore;->NetworkStateChangeNotify(I)V

    goto :goto_0

    .line 107
    :cond_3
    const-string p1, "Network State change to TYPE_WIFI"

    invoke-static {v1, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object p1, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    sget-object v0, Lcom/gcore/abase/NetworkState;->ReachableViaWiFi:Lcom/gcore/abase/NetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gcore/abase/GCloudCore;->NetworkStateChangeNotify(I)V

    goto :goto_0

    .line 111
    :cond_4
    const-string p1, "Network State change to TYPE_MOBILE"

    invoke-static {v1, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object p1, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    sget-object v0, Lcom/gcore/abase/NetworkState;->ReachableViaWWAN:Lcom/gcore/abase/NetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gcore/abase/GCloudCore;->NetworkStateChangeNotify(I)V

    goto :goto_0

    .line 104
    :cond_5
    const-string p1, "Network State change to TYPE_NONE"

    invoke-static {v1, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hasRegistListener()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->mNetworkChangeCallback:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->mNetworkChangeReceiver:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;

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


# virtual methods
.method public enableCallback(Z)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/gcore/abase/NetworkChangeHelper;->hasRegistListener()Z

    move-result v0

    const-string v1, "NetworkChangeHelper"

    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo p1, "this api need to be called before registerNetworkListener"

    invoke-static {v1, p1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_0
    const-string v0, "enableCallback"

    invoke-static {v1, v0}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-boolean p1, p0, Lcom/gcore/abase/NetworkChangeHelper;->enableCallback:Z

    return-void
.end method

.method public registerNetworkListener(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/gcore/abase/NetworkChangeHelper;->hasRegistListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string p1, "NetworkChangeHelper"

    const-string v0, "NetworkCallback registered"

    invoke-static {p1, v0}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->enableCallback:Z

    if-eqz v0, :cond_1

    .line 53
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_2

    .line 55
    new-instance v0, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;

    invoke-direct {v0, p0}, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;-><init>(Lcom/gcore/abase/NetworkChangeHelper;)V

    iput-object v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->mNetworkChangeCallback:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;

    .line 57
    invoke-static {p1, v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;

    invoke-direct {v0, p0}, Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;-><init>(Lcom/gcore/abase/NetworkChangeHelper;)V

    iput-object v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->mNetworkChangeReceiver:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/gcore/abase/NetworkChangeHelper;->mNetworkChangeReceiver:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterNetworkListener(Landroid/content/Context;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Lcom/gcore/abase/NetworkChangeHelper;->hasRegistListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const-string p1, "NetworkChangeHelper"

    const-string v0, "has not RegistNetworkCallback"

    invoke-static {p1, v0}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->enableCallback:Z

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->mNetworkChangeCallback:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;

    if-eqz v0, :cond_2

    .line 75
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_2

    .line 77
    iget-object v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->mNetworkChangeCallback:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 78
    iput-object v2, p0, Lcom/gcore/abase/NetworkChangeHelper;->mNetworkChangeCallback:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeCallback;

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/gcore/abase/NetworkChangeHelper;->mNetworkChangeReceiver:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    iput-object v2, p0, Lcom/gcore/abase/NetworkChangeHelper;->mNetworkChangeReceiver:Lcom/gcore/abase/NetworkChangeHelper$NetworkChangeReceiver;

    :cond_2
    :goto_0
    return-void
.end method
