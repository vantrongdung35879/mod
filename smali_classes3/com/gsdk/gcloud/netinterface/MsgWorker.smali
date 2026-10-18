.class Lcom/gsdk/gcloud/netinterface/MsgWorker;
.super Ljava/lang/Object;
.source "MsgWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static LOGTAG:Ljava/lang/String; = "NetInterfaceHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDomains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInit:Z

.field private mMsgQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/gsdk/gcloud/netinterface/EventMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionGranted:Z

.field private mRequestCell:Landroid/net/NetworkRequest;

.field private mRequestCellNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mRequestEth:Landroid/net/NetworkRequest;

.field private mRequestEthNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mRequestVpn:Landroid/net/NetworkRequest;

.field private mRequestVpnNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mRequestWiFi:Landroid/net/NetworkRequest;

.field private mRequestWiFiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mPermissionGranted:Z

    .line 45
    iput-boolean v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mInit:Z

    .line 57
    iput-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mContext:Landroid/content/Context;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mNetworks:Ljava/util/HashMap;

    .line 59
    new-instance p1, Ljava/util/Vector;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mMsgQueue:Ljava/util/Vector;

    .line 60
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mDomains:Ljava/util/Vector;

    return-void
.end method

.method private dealBind(ILjava/lang/String;I)V
    .locals 8

    .line 374
    sget-object v0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dealBind:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/Network;

    .line 378
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    const/16 v4, -0x3ee

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v5, p3

    .line 380
    invoke-virtual/range {v1 .. v6}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->bindCallback(Ljava/lang/String;IIII)V

    return-void

    .line 384
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    const/16 v4, -0x3ef

    .line 385
    invoke-virtual {v7}, Landroid/net/Network;->hashCode()I

    move-result v6

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->bindCallback(Ljava/lang/String;IIII)V

    return-void

    .line 388
    :cond_1
    iget-boolean v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mPermissionGranted:Z

    if-nez v0, :cond_2

    .line 389
    sget-object v0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->LOGTAG:Ljava/lang/String;

    const-string v1, "mPermissionGranted is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x3f0

    .line 390
    invoke-virtual {v7}, Landroid/net/Network;->hashCode()I

    move-result v6

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->bindCallback(Ljava/lang/String;IIII)V

    return-void

    .line 394
    :cond_2
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 399
    :try_start_1
    const-class v2, Ljava/io/FileDescriptor;

    const-string v3, "descriptor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v3, 0x1

    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 407
    :try_start_2
    invoke-virtual {v2, v0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 415
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_3

    .line 417
    :try_start_3
    invoke-static {v7, v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Network;Ljava/io/FileDescriptor;)V

    .line 418
    invoke-virtual {v7}, Landroid/net/Network;->hashCode()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->bindCallback(Ljava/lang/String;IIII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/16 v4, -0x3ec

    .line 421
    invoke-virtual {v7}, Landroid/net/Network;->hashCode()I

    move-result v6

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->bindCallback(Ljava/lang/String;IIII)V

    return-void

    :cond_3
    const/16 v4, -0x3ed

    .line 425
    invoke-virtual {v7}, Landroid/net/Network;->hashCode()I

    move-result v6

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->bindCallback(Ljava/lang/String;IIII)V

    return-void

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 409
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const/16 v4, -0x3ea

    .line 410
    invoke-virtual {v7}, Landroid/net/Network;->hashCode()I

    move-result v6

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->bindCallback(Ljava/lang/String;IIII)V

    return-void

    :catch_2
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    const/16 v4, -0x3e9

    .line 402
    invoke-virtual {v7}, Landroid/net/Network;->hashCode()I

    move-result v6

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->bindCallback(Ljava/lang/String;IIII)V

    return-void

    :catchall_0
    move-exception v0

    .line 378
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private dealWarm(Ljava/lang/String;)V
    .locals 11

    .line 345
    sget-object v0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dealWarm:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mPermissionGranted:Z

    if-nez v0, :cond_1

    .line 348
    sget-object p1, Lcom/gsdk/gcloud/netinterface/MsgWorker;->LOGTAG:Ljava/lang/String;

    const-string v0, "mPermissionGranted is false"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 353
    :cond_1
    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mDomains:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mDomains:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 358
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 360
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 363
    :try_start_1
    invoke-virtual {v2, p1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 364
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/net/Network;->hashCode()I

    move-result v10

    const/4 v9, 0x4

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->dnsQueryCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 366
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const-string v7, "UnknownHostException"

    const/4 v8, -0x1

    invoke-virtual {v2}, Landroid/net/Network;->hashCode()I

    move-result v9

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->dnsQueryCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 367
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 358
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private ifname(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 338
    const-string/jumbo p1, "unknown"

    return-object p1

    .line 335
    :cond_0
    const-string/jumbo p1, "vpn"

    return-object p1

    .line 332
    :cond_1
    const-string p1, "ethernet"

    return-object p1

    .line 329
    :cond_2
    const-string/jumbo p1, "wifi"

    return-object p1

    .line 326
    :cond_3
    const-string p1, "cellular"

    return-object p1
.end method

.method public static isWiFiEnable(Landroid/content/Context;)Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public native bindCallback(Ljava/lang/String;IIII)V
.end method

.method public checkManifestPermission()Z
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    :try_start_0
    const-string v0, "android.permission.INTERNET"

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 113
    iget-object v4, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mContext:Landroid/content/Context;

    aget-object v5, v0, v3

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    sget-object v4, Lcom/gsdk/gcloud/netinterface/MsgWorker;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not granted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    aget-object v4, v0, v3

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mPermissionGranted:Z

    goto :goto_1

    .line 122
    :cond_3
    iput-boolean v1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mPermissionGranted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v1

    .line 125
    :catch_0
    iput-boolean v1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mPermissionGranted:Z

    return v1
.end method

.method public native connectivityManagerException(Ljava/lang/String;)V
.end method

.method public native dnsQueryCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public getNetStatus(Landroid/content/Context;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->isWiFiEnable(Landroid/content/Context;)Z

    move-result v0

    .line 98
    invoke-virtual {p0, p1}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->isMobileEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x10

    :cond_1
    return v0
.end method

.method public initCM(Z)V
    .locals 4

    .line 137
    sget-object v0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->LOGTAG:Ljava/lang/String;

    const-string v1, "initCM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 139
    iget-boolean p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mInit:Z

    if-eqz p1, :cond_0

    return-void

    .line 143
    :cond_0
    sget-object p1, Lcom/gsdk/gcloud/netinterface/MsgWorker;->LOGTAG:Ljava/lang/String;

    const-string v0, "do initCM"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mInit:Z

    .line 145
    iget-object v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->getNetStatus(Landroid/content/Context;)I

    move-result v0

    .line 146
    invoke-virtual {p0, v0}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->setNetworkStatus(I)V

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 149
    invoke-virtual {p0, v2}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->versionAvailable(Z)V

    return-void

    .line 152
    :cond_1
    invoke-virtual {p0, p1}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->versionAvailable(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->checkManifestPermission()Z

    .line 156
    iget-boolean v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mPermissionGranted:Z

    if-nez v0, :cond_2

    .line 157
    sget-object p1, Lcom/gsdk/gcloud/netinterface/MsgWorker;->LOGTAG:Ljava/lang/String;

    const-string v0, "mPermissionGranted is false"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0, v2}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->permissionGranted(Z)V

    return-void

    .line 161
    :cond_2
    invoke-virtual {p0, p1}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->permissionGranted(Z)V

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 167
    iget-object v1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestWiFi:Landroid/net/NetworkRequest;

    const/16 v3, 0xc

    if-nez v1, :cond_3

    .line 168
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 169
    invoke-virtual {v1, p1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestWiFi:Landroid/net/NetworkRequest;

    .line 172
    :cond_3
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestWiFiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez p1, :cond_4

    .line 173
    new-instance p1, Lcom/gsdk/gcloud/netinterface/MsgWorker$1;

    invoke-direct {p1, p0}, Lcom/gsdk/gcloud/netinterface/MsgWorker$1;-><init>(Lcom/gsdk/gcloud/netinterface/MsgWorker;)V

    iput-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestWiFiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 188
    :cond_4
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestCell:Landroid/net/NetworkRequest;

    if-nez p1, :cond_5

    .line 189
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 190
    invoke-virtual {p1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestCell:Landroid/net/NetworkRequest;

    .line 193
    :cond_5
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestCellNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez p1, :cond_6

    .line 194
    new-instance p1, Lcom/gsdk/gcloud/netinterface/MsgWorker$2;

    invoke-direct {p1, p0}, Lcom/gsdk/gcloud/netinterface/MsgWorker$2;-><init>(Lcom/gsdk/gcloud/netinterface/MsgWorker;)V

    iput-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestCellNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 209
    :cond_6
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestEth:Landroid/net/NetworkRequest;

    if-nez p1, :cond_7

    .line 210
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x3

    .line 211
    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestEth:Landroid/net/NetworkRequest;

    .line 214
    :cond_7
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestEthNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez p1, :cond_8

    .line 215
    new-instance p1, Lcom/gsdk/gcloud/netinterface/MsgWorker$3;

    invoke-direct {p1, p0}, Lcom/gsdk/gcloud/netinterface/MsgWorker$3;-><init>(Lcom/gsdk/gcloud/netinterface/MsgWorker;)V

    iput-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestEthNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 231
    :cond_8
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestVpn:Landroid/net/NetworkRequest;

    if-nez p1, :cond_9

    .line 232
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x4

    .line 233
    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 234
    invoke-virtual {p1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestVpn:Landroid/net/NetworkRequest;

    .line 236
    :cond_9
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestVpnNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez p1, :cond_a

    .line 237
    new-instance p1, Lcom/gsdk/gcloud/netinterface/MsgWorker$4;

    invoke-direct {p1, p0}, Lcom/gsdk/gcloud/netinterface/MsgWorker$4;-><init>(Lcom/gsdk/gcloud/netinterface/MsgWorker;)V

    iput-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestVpnNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    :cond_a
    :try_start_1
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestWiFiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 253
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestCellNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 254
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestEthNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 255
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestVpnNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    :goto_0
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestWiFi:Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestWiFiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 262
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestCell:Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestCellNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 263
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestEth:Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestEthNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 264
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestVpn:Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mRequestVpnNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 266
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->connectivityManagerException(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public isMobileEnable(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "connectivity"

    .line 76
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_0

    return v0

    .line 80
    :cond_0
    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "getMobileDataEnabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 82
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public native permissionGranted(Z)V
.end method

.method public run()V
    .locals 4

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mMsgQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    .line 436
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 438
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 445
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mMsgQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsdk/gcloud/netinterface/EventMsg;

    .line 446
    iget-object v1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mMsgQueue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 451
    iget v1, v0, Lcom/gsdk/gcloud/netinterface/EventMsg;->cmd:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 457
    :cond_1
    iget v1, v0, Lcom/gsdk/gcloud/netinterface/EventMsg;->arg1:I

    iget-object v2, v0, Lcom/gsdk/gcloud/netinterface/EventMsg;->strarg:Ljava/lang/String;

    iget v0, v0, Lcom/gsdk/gcloud/netinterface/EventMsg;->arg2:I

    invoke-direct {p0, v1, v2, v0}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->dealBind(ILjava/lang/String;I)V

    goto :goto_0

    .line 453
    :cond_2
    invoke-virtual {p0, v2}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->initCM(Z)V

    .line 454
    iget-object v0, v0, Lcom/gsdk/gcloud/netinterface/EventMsg;->strarg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->dealWarm(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessage(Lcom/gsdk/gcloud/netinterface/EventMsg;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mMsgQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public native setInterfaces(Ljava/lang/String;)V
.end method

.method public setNetwork(ILandroid/net/Network;)V
    .locals 11

    const-string v0, "oldNetwork "

    const-string v1, "remove net:"

    const-string v2, "setNetwork  net:"

    .line 272
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-direct {p0, p1}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->ifname(I)Ljava/lang/String;

    move-result-object v3

    .line 277
    const-string v4, ""

    .line 278
    monitor-enter p0

    if-nez p2, :cond_1

    .line 280
    :try_start_0
    sget-object p2, Lcom/gsdk/gcloud/netinterface/MsgWorker;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v6, "remove_network"

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->dnsQueryCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 283
    monitor-exit p0

    return-void

    .line 285
    :cond_1
    sget-object v1, Lcom/gsdk/gcloud/netinterface/MsgWorker;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " network:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 287
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Network;

    .line 288
    sget-object v2, Lcom/gsdk/gcloud/netinterface/MsgWorker;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    .line 290
    invoke-virtual {p0, v1}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->initCM(Z)V

    .line 293
    :cond_2
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {p1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object p1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mDomains:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 296
    const-string v0, ""

    .line 297
    iget-object v1, p0, Lcom/gsdk/gcloud/netinterface/MsgWorker;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    const-string v0, "-"

    goto :goto_0

    .line 301
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {p0, v4}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->setInterfaces(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    .line 304
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 305
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/String;

    .line 308
    :try_start_1
    invoke-virtual {p2, v1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/net/Network;->hashCode()I

    move-result v10

    const/4 v9, 0x4

    move-object v5, p0

    move-object v6, v1

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->dnsQueryCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 315
    const-string v8, "Exception"

    const/4 v9, -0x2

    invoke-virtual {p2}, Landroid/net/Network;->hashCode()I

    move-result v10

    move-object v5, p0

    move-object v6, v1

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->dnsQueryCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 316
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    .line 311
    const-string v8, "UnknownHostException"

    const/4 v9, -0x1

    invoke-virtual {p2}, Landroid/net/Network;->hashCode()I

    move-result v10

    move-object v5, p0

    move-object v6, v1

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Lcom/gsdk/gcloud/netinterface/MsgWorker;->dnsQueryCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 312
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 301
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public native setNetworkStatus(I)V
.end method

.method public native versionAvailable(Z)V
.end method
