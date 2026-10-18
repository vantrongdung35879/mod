.class public Lcom/tencent/mna/u3;
.super Ljava/lang/Object;
.source "UdpHelper.java"


# direct methods
.method public static a(Ljava/lang/String;I[B)Ljava/net/DatagramPacket;
    .locals 1

    .line 2
    array-length v0, p2

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mna/u3;->a(Ljava/lang/String;I[BI)Ljava/net/DatagramPacket;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I[BI)Ljava/net/DatagramPacket;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/n1;->b(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/u3;->a(Ljava/net/InetAddress;I[BI)Ljava/net/DatagramPacket;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/net/InetAddress;I[BI)Ljava/net/DatagramPacket;
    .locals 1

    .line 1
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p2, p3, p0, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public static a(I)Ljava/net/DatagramSocket;
    .locals 2

    .line 10
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 11
    invoke-virtual {v0, p0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSocket exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
