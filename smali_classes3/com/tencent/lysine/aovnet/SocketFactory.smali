.class public Lcom/tencent/lysine/aovnet/SocketFactory;
.super Ljava/lang/Object;
.source "SocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;,
        Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;
    }
.end annotation


# static fields
.field private static final requestNetworkCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/lysine/aovnet/SocketFactory;->requestNetworkCallbackHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindToRequestedNetwork(I)Z
    .locals 10

    .line 172
    const-string v0, "Bind external socket needs Android M"

    const-string v1, "Requested network of socket unavailable"

    sget-object v2, Lcom/tencent/lysine/aovnet/SocketFactory;->requestNetworkCallbackHashMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;

    const/4 v3, 0x1

    .line 173
    const-string v4, "AovNet"

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 174
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v5

    const-string p0, "Bind socket unknown, fd: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 177
    :cond_0
    invoke-static {v2}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$100(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;

    move-result-object v6

    .line 179
    :try_start_0
    invoke-static {v2}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$400(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Landroid/net/Network;

    move-result-object v7

    .line 180
    invoke-static {v2}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$500(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Z

    move-result v8

    const/4 v9, 0x2

    if-nez v8, :cond_1

    .line 181
    const-string v0, "Requested network of socket unchanged, fd: %d, net: %s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v7}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    if-nez v7, :cond_2

    .line 184
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {v6, v1}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;->onException(Ljava/lang/String;)V

    return v5

    .line 188
    :cond_2
    invoke-static {v2}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$600(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 190
    invoke-static {v7, v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Network;Ljava/net/DatagramSocket;)V

    .line 191
    invoke-static {v2, v5}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$502(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;Z)Z

    .line 192
    const-string v0, "Bind socket success, fd: %d, net: %s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v7}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 194
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v1, v8, :cond_4

    .line 195
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 197
    invoke-static {v7, v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/Network;Ljava/io/FileDescriptor;)V

    .line 198
    invoke-static {v2, v5}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$502(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;Z)Z

    .line 199
    const-string v0, "Bind external socket success, fd: %d, net: %s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v7}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 202
    :cond_4
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-interface {v6, v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;->onException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p0

    .line 207
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v6, p0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;->onException(Ljava/lang/String;)V

    return v5
.end method

.method public static createDatagramSocket(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;)I
    .locals 7

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    const/4 v2, -0x1

    const-string v3, "AovNet"

    if-ge v0, v1, :cond_0

    .line 97
    const-string v0, "Bind socket needs Android LOLLIPOP_MR1"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-interface {p0, v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;->onException(Ljava/lang/String;)V

    return v2

    .line 102
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 103
    const-string v1, "New socket success"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v1, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;

    invoke-direct {v1, p0, v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;-><init>(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;Ljava/net/DatagramSocket;)V

    .line 105
    invoke-static {v1}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$000(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)I

    move-result v4

    .line 106
    sget-object v5, Lcom/tencent/lysine/aovnet/SocketFactory;->requestNetworkCallbackHashMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    .line 109
    const-string v0, "Test socket valid"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 113
    :goto_0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;->onException(Ljava/lang/String;)V

    return v2
.end method

.method public static hasTransport(II)Z
    .locals 6

    .line 156
    sget-object v0, Lcom/tencent/lysine/aovnet/SocketFactory;->requestNetworkCallbackHashMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;

    const/4 v1, 0x1

    .line 157
    const-string v2, "AovNet"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 158
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v3

    const-string p0, "HasTransport on socket unknown, fd: %d"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 161
    :cond_0
    invoke-static {v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$100(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;

    move-result-object v4

    .line 162
    invoke-static {v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$300(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    if-nez v5, :cond_1

    .line 163
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v3

    const-string p0, "Capabilities of socket unavailable, fd: %d"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string p0, "Capabilities of socket unavailable"

    invoke-interface {v4, p0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;->onException(Ljava/lang/String;)V

    return v3

    .line 167
    :cond_1
    invoke-static {v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$300(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method public static registerExternalSocket(ILcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;)Z
    .locals 2

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 121
    const-string p0, "AovNet"

    const-string v0, "Bind external socket needs Android M"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-interface {p1, v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;->onException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 125
    :cond_0
    new-instance v0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;

    invoke-direct {v0, p1, p0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;-><init>(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;I)V

    .line 126
    sget-object p1, Lcom/tencent/lysine/aovnet/SocketFactory;->requestNetworkCallbackHashMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public static requestNetwork(ILandroid/app/Activity;[I)Z
    .locals 5

    .line 132
    sget-object v0, Lcom/tencent/lysine/aovnet/SocketFactory;->requestNetworkCallbackHashMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;

    .line 133
    const-string v1, "AovNet"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 134
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "Request socket unknown, fd: %d"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 137
    :cond_0
    invoke-static {v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$100(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;

    .line 143
    const-string p0, "connectivity"

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-static {v0, p0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$202(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 144
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 p1, 0xc

    .line 145
    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 146
    array-length p1, p2

    :goto_0
    if-ge v2, p1, :cond_1

    aget v4, p2, v2

    .line 147
    invoke-virtual {p0, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$200(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 150
    const-string p0, "Request network success"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static unregisterNetworkCallback(ILandroid/app/Activity;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    sget-object v0, Lcom/tencent/lysine/aovnet/SocketFactory;->requestNetworkCallbackHashMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;

    const/4 v1, 0x1

    .line 216
    const-string v2, "AovNet"

    if-nez v0, :cond_0

    .line 217
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "Unregister socket unknown, fd: %d"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 221
    :cond_0
    invoke-static {v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$600(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Ljava/net/DatagramSocket;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 222
    invoke-static {v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$600(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Ljava/net/DatagramSocket;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 224
    :cond_1
    invoke-static {v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$700(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 225
    invoke-static {v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$700(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 227
    :cond_2
    const-string p0, "Close socket success"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->access$100(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;

    .line 235
    const-string p0, "connectivity"

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 236
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return v1
.end method
