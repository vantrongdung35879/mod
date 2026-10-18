.class Lcom/gcloudsdk/apollo/MsgWorker;
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

.field private mMsgQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/gcloudsdk/apollo/EventMsg;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mPermissionGranted:Z

    .line 40
    iput-object p1, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mContext:Landroid/content/Context;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mNetworks:Ljava/util/HashMap;

    .line 42
    new-instance p1, Ljava/util/Vector;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mMsgQueue:Ljava/util/Vector;

    .line 43
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mDomains:Ljava/util/Vector;

    return-void
.end method

.method private dealBind(ILjava/lang/String;I)V
    .locals 5

    .line 247
    sget-object v0, Lcom/gcloudsdk/apollo/MsgWorker;->LOGTAG:Ljava/lang/String;

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

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mPermissionGranted:Z

    if-nez v0, :cond_1

    .line 250
    sget-object p1, Lcom/gcloudsdk/apollo/MsgWorker;->LOGTAG:Ljava/lang/String;

    const-string p2, "mPermissionGranted is false"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 254
    :cond_1
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    const/4 v2, -0x1

    .line 259
    :try_start_0
    const-class v3, Ljava/io/FileDescriptor;

    const-string v4, "descriptor"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x1

    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 267
    :try_start_1
    invoke-virtual {v3, v0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    monitor-enter p0

    .line 276
    :try_start_2
    iget-object v2, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 277
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    .line 279
    invoke-virtual {p0, p2, p1, v4, p3}, Lcom/gcloudsdk/apollo/MsgWorker;->bindCallback(Ljava/lang/String;III)V

    return-void

    .line 282
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_3

    .line 284
    :try_start_3
    invoke-static {v2, v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Network;Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/gcloudsdk/apollo/MsgWorker;->bindCallback(Ljava/lang/String;III)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x2

    .line 288
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/gcloudsdk/apollo/MsgWorker;->bindCallback(Ljava/lang/String;III)V

    return-void

    :cond_3
    const/4 v0, -0x3

    .line 292
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/gcloudsdk/apollo/MsgWorker;->bindCallback(Ljava/lang/String;III)V

    return-void

    :catchall_0
    move-exception p1

    .line 277
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catch_1
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 270
    invoke-virtual {p0, p2, p1, v2, p3}, Lcom/gcloudsdk/apollo/MsgWorker;->bindCallback(Ljava/lang/String;III)V

    return-void

    :catch_2
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 262
    invoke-virtual {p0, p2, p1, v2, p3}, Lcom/gcloudsdk/apollo/MsgWorker;->bindCallback(Ljava/lang/String;III)V

    return-void
.end method

.method private dealWarm(Ljava/lang/String;)V
    .locals 4

    .line 221
    sget-object v0, Lcom/gcloudsdk/apollo/MsgWorker;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dealWarm:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 223
    :cond_0
    iget-boolean v0, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mPermissionGranted:Z

    if-nez v0, :cond_1

    .line 224
    sget-object p1, Lcom/gcloudsdk/apollo/MsgWorker;->LOGTAG:Ljava/lang/String;

    const-string v0, "mPermissionGranted is false"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 229
    :cond_1
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mDomains:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 232
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 234
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 237
    :try_start_1
    invoke-virtual {v2, p1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/gcloudsdk/apollo/MsgWorker;->dnsQueryCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 240
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 232
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

    .line 214
    const-string/jumbo p1, "unknown"

    return-object p1

    .line 211
    :cond_0
    const-string/jumbo p1, "vpn"

    return-object p1

    .line 208
    :cond_1
    const-string p1, "ethernet"

    return-object p1

    .line 205
    :cond_2
    const-string/jumbo p1, "wifi"

    return-object p1

    .line 202
    :cond_3
    const-string p1, "cellular"

    return-object p1
.end method


# virtual methods
.method public native bindCallback(Ljava/lang/String;III)V
.end method

.method public checkManifestPermission()Z
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/gcloudsdk/apollo/MsgWorker;->LOGTAG:Ljava/lang/String;

    const-string v2, "checkManifestPermission mContext == null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 53
    :cond_0
    :try_start_0
    const-string v0, "android.permission.INTERNET"

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 60
    iget-object v4, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mContext:Landroid/content/Context;

    aget-object v5, v0, v3

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    aget-object v4, v0, v3

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v4, Lcom/gcloudsdk/apollo/MsgWorker;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkManifestPermission:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has no permission"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mPermissionGranted:Z

    goto :goto_1

    .line 69
    :cond_3
    iput-boolean v1, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mPermissionGranted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v1

    .line 72
    :catch_0
    iput-boolean v1, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mPermissionGranted:Z

    return v1
.end method

.method public native dnsQueryCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public initCM()V
    .locals 10

    .line 84
    sget-object v0, Lcom/gcloudsdk/apollo/MsgWorker;->LOGTAG:Ljava/lang/String;

    const-string v1, "initCM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/gcloudsdk/apollo/MsgWorker;->checkManifestPermission()Z

    .line 88
    iget-boolean v0, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mPermissionGranted:Z

    if-nez v0, :cond_1

    .line 89
    sget-object v0, Lcom/gcloudsdk/apollo/MsgWorker;->LOGTAG:Ljava/lang/String;

    const-string v1, "mPermissionGranted is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 95
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    .line 96
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xc

    .line 97
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 98
    new-instance v3, Lcom/gcloudsdk/apollo/MsgWorker$1;

    invoke-direct {v3, p0}, Lcom/gcloudsdk/apollo/MsgWorker$1;-><init>(Lcom/gcloudsdk/apollo/MsgWorker;)V

    .line 112
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v5, 0x0

    .line 113
    invoke-virtual {v4, v5}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    .line 114
    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 115
    new-instance v5, Lcom/gcloudsdk/apollo/MsgWorker$2;

    invoke-direct {v5, p0}, Lcom/gcloudsdk/apollo/MsgWorker$2;-><init>(Lcom/gcloudsdk/apollo/MsgWorker;)V

    .line 129
    new-instance v6, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v6}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v7, 0x3

    .line 130
    invoke-virtual {v6, v7}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v6

    .line 131
    invoke-virtual {v6, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v6

    .line 132
    new-instance v7, Lcom/gcloudsdk/apollo/MsgWorker$3;

    invoke-direct {v7, p0}, Lcom/gcloudsdk/apollo/MsgWorker$3;-><init>(Lcom/gcloudsdk/apollo/MsgWorker;)V

    .line 147
    new-instance v8, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v8}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v9, 0x4

    .line 148
    invoke-virtual {v8, v9}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v8

    .line 149
    invoke-virtual {v8, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 150
    new-instance v8, Lcom/gcloudsdk/apollo/MsgWorker$4;

    invoke-direct {v8, p0}, Lcom/gcloudsdk/apollo/MsgWorker$4;-><init>(Lcom/gcloudsdk/apollo/MsgWorker;)V

    .line 163
    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 164
    invoke-virtual {v0, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 165
    invoke-virtual {v0, v6, v7}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 166
    invoke-virtual {v0, v2, v8}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mMsgQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x14

    .line 303
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 312
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mMsgQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gcloudsdk/apollo/EventMsg;

    .line 313
    iget-object v1, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mMsgQueue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 318
    iget v1, v0, Lcom/gcloudsdk/apollo/EventMsg;->cmd:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/16 v0, 0xff

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/gcloudsdk/apollo/MsgWorker;->initCM()V

    goto :goto_0

    .line 323
    :cond_2
    iget v1, v0, Lcom/gcloudsdk/apollo/EventMsg;->arg1:I

    iget-object v2, v0, Lcom/gcloudsdk/apollo/EventMsg;->strarg:Ljava/lang/String;

    iget v0, v0, Lcom/gcloudsdk/apollo/EventMsg;->arg2:I

    invoke-direct {p0, v1, v2, v0}, Lcom/gcloudsdk/apollo/MsgWorker;->dealBind(ILjava/lang/String;I)V

    goto :goto_0

    .line 320
    :cond_3
    iget-object v0, v0, Lcom/gcloudsdk/apollo/EventMsg;->strarg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gcloudsdk/apollo/MsgWorker;->dealWarm(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessage(Lcom/gcloudsdk/apollo/EventMsg;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mMsgQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNetwork(ILandroid/net/Network;)V
    .locals 5

    const-string v0, "remove net:"

    const-string/jumbo v1, "setNetwork  net:"

    .line 170
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-direct {p0, p1}, Lcom/gcloudsdk/apollo/MsgWorker;->ifname(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    monitor-enter p0

    if-nez p2, :cond_1

    .line 175
    :try_start_0
    sget-object p2, Lcom/gcloudsdk/apollo/MsgWorker;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit p0

    return-void

    .line 179
    :cond_1
    sget-object v0, Lcom/gcloudsdk/apollo/MsgWorker;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " network:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p1, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mNetworks:Ljava/util/HashMap;

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object p1, p0, Lcom/gcloudsdk/apollo/MsgWorker;->mDomains:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 183
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 185
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 186
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/String;

    .line 189
    :try_start_1
    invoke-virtual {p2, v1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/gcloudsdk/apollo/MsgWorker;->dnsQueryCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 192
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 183
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
