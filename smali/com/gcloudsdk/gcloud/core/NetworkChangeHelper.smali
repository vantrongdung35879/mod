.class public Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;
.super Ljava/lang/Object;
.source "NetworkChangeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeReceiver;,
        Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;
    }
.end annotation


# static fields
.field public static Instance:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper; = null

.field private static final NETWORK_STATE_AVAILABLE_MOBILE:I = 0x1

.field private static final NETWORK_STATE_AVAILABLE_OTHER:I = 0x3

.field private static final NETWORK_STATE_AVAILABLE_WIFI:I = 0x2

.field private static final NETWORK_STATE_UNAVAILABLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkChangeHelper"


# instance fields
.field private enableCallback:Z

.field private mLastState:I

.field private mNetworkChangeCallback:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;

.field private mNetworkChangeReceiver:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;

    invoke-direct {v0}, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;-><init>()V

    sput-object v0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->Instance:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->enableCallback:Z

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mLastState:I

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mNetworkChangeReceiver:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeReceiver;

    .line 31
    iput-object v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mNetworkChangeCallback:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->handleNetworkChange(I)V

    return-void
.end method

.method private handleNetworkChange(I)V
    .locals 3

    .line 93
    iget v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mLastState:I

    const-string v1, "NetworkChangeHelper"

    if-ne v0, p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Network State not change:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    sget-object v2, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->NotReachable:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    invoke-virtual {v2}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/gsdk/gcloud/GCloud;->NetworkStateChangeNotify(I)V

    .line 103
    :cond_1
    iput p1, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mLastState:I

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    const-string p1, "Network State change to TYPE_OTHER"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object p1, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    sget-object v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ReachableViaOthers:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    invoke-virtual {v0}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gsdk/gcloud/GCloud;->NetworkStateChangeNotify(I)V

    goto :goto_0

    .line 109
    :cond_3
    const-string p1, "Network State change to TYPE_WIFI"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object p1, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    sget-object v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ReachableViaWiFi:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    invoke-virtual {v0}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gsdk/gcloud/GCloud;->NetworkStateChangeNotify(I)V

    goto :goto_0

    .line 113
    :cond_4
    const-string p1, "Network State change to TYPE_MOBILE"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object p1, Lcom/gsdk/gcloud/GCloud;->Instance:Lcom/gsdk/gcloud/GCloud;

    sget-object v0, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ReachableViaWWAN:Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;

    invoke-virtual {v0}, Lcom/gcloudsdk/gcloud/core/NetworkStateChecker$NetworkState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gsdk/gcloud/GCloud;->NetworkStateChangeNotify(I)V

    goto :goto_0

    .line 106
    :cond_5
    const-string p1, "Network State change to TYPE_NONE"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private hasRegistListener()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mNetworkChangeCallback:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mNetworkChangeReceiver:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeReceiver;

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

    .line 38
    invoke-direct {p0}, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->hasRegistListener()Z

    move-result v0

    const-string v1, "NetworkChangeHelper"

    if-eqz v0, :cond_0

    .line 39
    const-string/jumbo p1, "this api need to be called before registerNetworkListener"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_0
    const-string v0, "enableCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-boolean p1, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->enableCallback:Z

    return-void
.end method

.method public registerNetworkListener(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->hasRegistListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string p1, "NetworkChangeHelper"

    const-string v0, "NetworkCallback registered"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->enableCallback:Z

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_2

    .line 57
    new-instance v0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;

    invoke-direct {v0, p0}, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;-><init>(Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;)V

    iput-object v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mNetworkChangeCallback:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;

    .line 59
    invoke-static {p1, v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeReceiver;

    invoke-direct {v0, p0}, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeReceiver;-><init>(Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;)V

    iput-object v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mNetworkChangeReceiver:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeReceiver;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mNetworkChangeReceiver:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterNetworkListener(Landroid/content/Context;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->hasRegistListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string p1, "NetworkChangeHelper"

    const-string v0, "has not RegistNetworkCallback"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->enableCallback:Z

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mNetworkChangeCallback:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;

    if-eqz v0, :cond_2

    .line 77
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mNetworkChangeCallback:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 80
    iput-object v2, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mNetworkChangeCallback:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeCallback;

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mNetworkChangeReceiver:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeReceiver;

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    iput-object v2, p0, Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper;->mNetworkChangeReceiver:Lcom/gcloudsdk/gcloud/core/NetworkChangeHelper$NetworkChangeReceiver;

    :cond_2
    :goto_0
    return-void
.end method
