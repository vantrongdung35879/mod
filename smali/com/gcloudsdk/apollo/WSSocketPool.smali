.class public Lcom/gcloudsdk/apollo/WSSocketPool;
.super Ljava/lang/Object;
.source "WSSocketPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gcloudsdk/apollo/WSSocketPool$UnsafeX509TrustManager;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String; = "WSSocketPool"


# instance fields
.field private mSockets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/gcloudsdk/apollo/WSSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gcloudsdk/apollo/WSSocketPool;->mSockets:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public close(I)I
    .locals 3

    .line 132
    sget-object v0, Lcom/gcloudsdk/apollo/WSSocketPool;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close  cid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/gcloudsdk/apollo/WSSocketPool;->mSockets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gcloudsdk/apollo/WSSocket;

    if-nez p1, :cond_0

    const/16 p1, -0x15

    return p1

    .line 138
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/gcloudsdk/apollo/WSSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/16 p1, -0x17

    return p1
.end method

.method public connect(ILjava/lang/String;I)I
    .locals 3

    .line 105
    sget-object v0, Lcom/gcloudsdk/apollo/WSSocketPool;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect  cid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/gcloudsdk/apollo/WSSocketPool;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 115
    :try_start_1
    invoke-virtual {v0, p2, p3}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/SSLSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    new-instance p3, Lcom/gcloudsdk/apollo/WSSocket;

    invoke-direct {p3}, Lcom/gcloudsdk/apollo/WSSocket;-><init>()V

    .line 122
    :try_start_2
    invoke-virtual {p3, p2}, Lcom/gcloudsdk/apollo/WSSocket;->init(Ljavax/net/ssl/SSLSocket;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    iget-object p2, p0, Lcom/gcloudsdk/apollo/WSSocketPool;->mSockets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/16 p1, -0xd

    return p1

    :catch_1
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/16 p1, -0xc

    return p1

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 110
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, -0xb

    return p1
.end method

.method public getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x1

    .line 76
    :try_start_1
    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    new-instance v3, Lcom/gcloudsdk/apollo/WSSocketPool$UnsafeX509TrustManager;

    invoke-direct {v3, p0, v0}, Lcom/gcloudsdk/apollo/WSSocketPool$UnsafeX509TrustManager;-><init>(Lcom/gcloudsdk/apollo/WSSocketPool;Lcom/gcloudsdk/apollo/WSSocketPool$1;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v1, v0

    .line 80
    :goto_0
    invoke-virtual {v2}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v1, v0

    .line 78
    :goto_1
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_2
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public recv(I[B)I
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/gcloudsdk/apollo/WSSocketPool;->mSockets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gcloudsdk/apollo/WSSocket;

    if-nez p1, :cond_0

    const/16 p1, -0x15

    return p1

    .line 170
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/gcloudsdk/apollo/WSSocket;->read()[B

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 172
    array-length v1, p1

    .line 173
    array-length v1, p2

    array-length v2, p1

    if-ge v1, v2, :cond_1

    const/16 p1, -0x21

    return p1

    .line 176
    :cond_1
    array-length v1, p1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    array-length v0, p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 p1, -0x17

    return p1
.end method

.method public send(I[B)I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/gcloudsdk/apollo/WSSocketPool;->mSockets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gcloudsdk/apollo/WSSocket;

    if-nez p1, :cond_0

    const/16 p1, -0x15

    return p1

    .line 153
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/gcloudsdk/apollo/WSSocket;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    array-length p1, p2

    return p1

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/16 p1, -0x16

    return p1
.end method
