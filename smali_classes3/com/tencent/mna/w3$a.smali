.class Lcom/tencent/mna/w3$a;
.super Ljava/lang/Object;
.source "UpnpDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/w3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/net/InetAddress;

.field b:Ljava/net/MulticastSocket;

.field c:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/tencent/mna/w3$a;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Lcom/tencent/mna/w3$a;

    invoke-direct {v1}, Lcom/tencent/mna/w3$a;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_1

    return-object v0

    .line 7
    :cond_1
    new-instance v2, Ljava/net/MulticastSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v2, v1, Lcom/tencent/mna/w3$a;->b:Ljava/net/MulticastSocket;

    .line 8
    const-string v2, "239.255.255.250"

    invoke-static {v2}, Lcom/tencent/mna/n1;->b(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mna/w3$a;->a:Ljava/net/InetAddress;

    .line 9
    iget-object v3, v1, Lcom/tencent/mna/w3$a;->b:Ljava/net/MulticastSocket;

    invoke-virtual {v3, v2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 10
    iget-object v2, v1, Lcom/tencent/mna/w3$a;->b:Ljava/net/MulticastSocket;

    const/16 v3, 0x5dc

    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->setSoTimeout(I)V

    .line 11
    invoke-direct {v1, p0}, Lcom/tencent/mna/w3$a;->a(Landroid/net/wifi/WifiManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/w3;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": get uPnPSocket failed, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lcom/tencent/mna/w3$a;->a()V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "M-SEARCH * HTTP/1.1\r\nHost:239.255.255.250:1900\r\nMan:\"ssdp:discover\"\r\nMX:1\r\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/net/wifi/WifiManager;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 16
    const-string v0, "UpnpDeviceScanner"

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mna/w3$a;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 18
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/w3$a;->b:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/w3$a;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method b()Ljava/net/DatagramPacket;
    .locals 3

    const/16 v0, 0x800

    .line 6
    new-array v1, v0, [B

    .line 7
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 8
    iget-object v0, p0, Lcom/tencent/mna/w3$a;->b:Ljava/net/MulticastSocket;

    invoke-virtual {v0, v2}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    return-object v2
.end method

.method b(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/tencent/mna/w3$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/net/DatagramPacket;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v2, p0, Lcom/tencent/mna/w3$a;->a:Ljava/net/InetAddress;

    const/16 v3, 0x76c

    invoke-direct {v0, v1, p1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 5
    iget-object p1, p0, Lcom/tencent/mna/w3$a;->b:Ljava/net/MulticastSocket;

    invoke-virtual {p1, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method
