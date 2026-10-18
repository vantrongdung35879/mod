.class public Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "CTIHttpsCertHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoSSLv3Factory"
.end annotation


# instance fields
.field private final delegate:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static makeSocketSafe(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 6

    .line 341
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_4

    instance-of v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3SSLSocket;

    if-nez v0, :cond_4

    .line 342
    new-instance v0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3SSLSocket;

    check-cast p0, Ljavax/net/ssl/SSLSocket;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3SSLSocket;-><init>(Ljavax/net/ssl/SSLSocket;Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$1;)V

    .line 343
    move-object p0, v0

    check-cast p0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 345
    const-string v2, "TLSv1.2"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    .line 346
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 347
    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :cond_2
    if-eqz v3, :cond_3

    .line 353
    const-string v1, "TLSv1.1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_3
    move-object p0, v0

    :cond_4
    return-object p0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;->makeSocketSafe(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;->makeSocketSafe(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;->makeSocketSafe(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;->makeSocketSafe(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;->makeSocketSafe(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/centauri/http/centaurihttp/CTIHttpsCertHandler$APDelegateNoSSLv3Compat$NoSSLv3Factory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
