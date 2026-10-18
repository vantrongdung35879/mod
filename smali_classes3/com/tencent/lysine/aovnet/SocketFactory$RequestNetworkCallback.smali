.class Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lysine/aovnet/SocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestNetworkCallback"
.end annotation


# instance fields
.field private fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private listener:Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;

.field private manager:Landroid/net/ConnectivityManager;

.field private networkCapabilities:Landroid/net/NetworkCapabilities;

.field private networkChangedAfterBind:Z

.field private requestedNetwork:Landroid/net/Network;

.field private socket:Ljava/net/DatagramSocket;

.field private socketFd:I


# direct methods
.method public constructor <init>(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;I)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->listener:Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;

    .line 63
    iput p2, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->socketFd:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;Ljava/net/DatagramSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->listener:Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;

    .line 50
    iput-object p2, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->socket:Ljava/net/DatagramSocket;

    .line 51
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 52
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    .line 54
    iput-object p1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 55
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 56
    const-string p2, "AovNet"

    const-string v0, "Dub socket success"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    iput p1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->socketFd:I

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->socketFd:I

    return p0
.end method

.method static synthetic access$100(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->listener:Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->manager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->manager:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->networkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Landroid/net/Network;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->requestedNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->networkChangedAfterBind:Z

    return p0
.end method

.method static synthetic access$502(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->networkChangedAfterBind:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Ljava/net/DatagramSocket;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->socket:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 68
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 69
    iget v0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->socketFd:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "onAvailable, fd: %d, net: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AovNet"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->requestedNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->networkChangedAfterBind:Z

    .line 71
    iput-object p1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->requestedNetwork:Landroid/net/Network;

    .line 72
    iget-object v0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->manager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 73
    iget-object p1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->listener:Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;

    iget v0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->socketFd:I

    invoke-interface {p1, v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;->onAvailable(I)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 78
    iput-object p2, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 79
    iget-object p1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->listener:Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;

    iget p2, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->socketFd:I

    invoke-interface {p1, p2}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;->onCapabilitiesChanged(I)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 84
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 85
    iget v0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->socketFd:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "onLost, fd: %d, net: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AovNet"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-boolean v0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->networkChangedAfterBind:Z

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->requestedNetwork:Landroid/net/Network;

    .line 88
    iput-object p1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 89
    iget-object p1, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->listener:Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;

    iget v0, p0, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkCallback;->socketFd:I

    invoke-interface {p1, v0}, Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;->onLost(I)V

    return-void
.end method
