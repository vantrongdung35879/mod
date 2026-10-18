.class public Lcom/tencent/beacon/base/net/adapter/f;
.super Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;
.source "SocketAdapter.java"


# instance fields
.field private a:Lcom/tencent/beacon/base/net/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/beacon/base/net/a/c<",
            "[B",
            "Lcom/tencent/beacon/pack/SocketResponsePackage;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/beacon/base/net/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/beacon/base/net/a/c<",
            "Lcom/tencent/beacon/base/net/call/JceRequestEntity;",
            "Lcom/tencent/beacon/pack/SocketRequestPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/beacon/base/net/a/e;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/a/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/base/net/adapter/f;->a:Lcom/tencent/beacon/base/net/a/c;

    .line 3
    new-instance v0, Lcom/tencent/beacon/base/net/a/d;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/a/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/base/net/adapter/f;->b:Lcom/tencent/beacon/base/net/a/c;

    return-void
.end method

.method public static a()Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/beacon/base/net/adapter/f;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/adapter/f;-><init>()V

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "SocketAdapter"

    const-string v2, "create socket domain: %s, port: %d"

    invoke-static {v0, v2, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 40
    new-instance v0, Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x7530

    .line 41
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-object v0
.end method

.method private a(Lcom/tencent/beacon/base/net/call/Callback;Ljava/lang/String;Lcom/tencent/beacon/pack/SocketResponsePackage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "[B>;",
            "Ljava/lang/String;",
            "Lcom/tencent/beacon/pack/SocketResponsePackage;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/beacon/base/net/NetException;
        }
    .end annotation

    .line 2
    iget-object v0, p3, Lcom/tencent/beacon/pack/SocketResponsePackage;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "decrypt Data fail!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/tencent/beacon/base/net/d;

    iget p3, p3, Lcom/tencent/beacon/pack/SocketResponsePackage;->statusCode:I

    const-string v1, "405"

    const-string v2, "server encrypt-status error!"

    invoke-direct {v0, p2, v1, p3, v2}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V

    return-void

    .line 4
    :cond_0
    iget-object p2, p3, Lcom/tencent/beacon/pack/SocketResponsePackage;->body:[B

    invoke-interface {p1, p2}, Lcom/tencent/beacon/base/net/call/Callback;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/net/Socket;Lcom/tencent/beacon/pack/SocketRequestPackage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/tencent/beacon/pack/b;

    invoke-direct {v0}, Lcom/tencent/beacon/pack/b;-><init>()V

    .line 24
    invoke-virtual {p2, v0}, Lcom/tencent/beacon/pack/SocketRequestPackage;->writeTo(Lcom/tencent/beacon/pack/b;)V

    .line 25
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 26
    invoke-virtual {v0}, Lcom/tencent/beacon/pack/b;->b()[B

    move-result-object p2

    .line 27
    array-length v0, p2

    .line 28
    invoke-direct {p0, p2, v0}, Lcom/tencent/beacon/base/net/adapter/f;->a([BI)[B

    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 30
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private a(Ljava/net/Socket;Z)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x800

    .line 7
    :try_start_2
    new-array v3, v3, [B

    .line 8
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 9
    invoke-virtual {v4, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 11
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    if-nez p2, :cond_1

    .line 12
    array-length p2, v3

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 13
    array-length v5, v3

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {p2, v3, v2, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 15
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 16
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    new-array p2, v2, [Ljava/io/Closeable;

    aput-object p1, p2, v1

    aput-object v4, p2, v0

    invoke-static {p2}, Lcom/tencent/beacon/base/util/b;->a([Ljava/io/Closeable;)V

    return-object v3

    :catchall_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v4, v3

    :goto_1
    move-object v3, p1

    goto :goto_2

    :catchall_2
    move-exception p2

    move-object v4, v3

    .line 18
    :goto_2
    :try_start_3
    invoke-static {p2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 19
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v3, p1, v1

    aput-object v4, p1, v0

    invoke-static {p1}, Lcom/tencent/beacon/base/util/b;->a([Ljava/io/Closeable;)V

    .line 20
    throw p2

    :catchall_3
    move-exception p1

    .line 21
    new-array p2, v2, [Ljava/io/Closeable;

    aput-object v3, p2, v1

    aput-object v4, p2, v0

    invoke-static {p2}, Lcom/tencent/beacon/base/util/b;->a([Ljava/io/Closeable;)V

    .line 22
    throw p1
.end method

.method private a([BI)[B
    .locals 2

    add-int/lit8 p2, p2, 0x4

    .line 31
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 32
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v1, 0xffff

    and-int/2addr p2, v1

    int-to-short p2, p2

    .line 33
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 p1, 0xd

    .line 35
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 p1, 0xa

    .line 36
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public request(Lcom/tencent/beacon/base/net/call/JceRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/JceRequestEntity;",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "[B>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "SocketAdapter"

    const-string v4, "responsePackage msg: "

    const-string v5, "receivedData: "

    const-string v6, "content length is too long:"

    const-string v7, "send data size: "

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getDomain()Ljava/lang/String;

    move-result-object v8

    .line 2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getType()Lcom/tencent/beacon/base/net/RequestType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 4
    :try_start_0
    iget-object v13, v1, Lcom/tencent/beacon/base/net/adapter/f;->b:Lcom/tencent/beacon/base/net/a/c;

    invoke-interface {v13, v0}, Lcom/tencent/beacon/base/net/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tencent/beacon/pack/SocketRequestPackage;

    invoke-virtual {v13}, Lcom/tencent/beacon/pack/AbstractJceStruct;->toByteArray()[B

    move-result-object v13

    const/4 v14, -0x1

    if-eqz v13, :cond_1

    .line 5
    array-length v15, v13

    const v12, 0xffff

    if-le v15, v12, :cond_1

    .line 6
    new-instance v0, Lcom/tencent/beacon/base/net/d;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "406"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v13

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v11, v3, v14, v4}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getPort()I

    move-result v6

    invoke-direct {v1, v8, v6}, Lcom/tencent/beacon/base/net/adapter/f;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v12
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getContent()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3, v10, v6, v7}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v6, v1, Lcom/tencent/beacon/base/net/adapter/f;->b:Lcom/tencent/beacon/base/net/a/c;

    invoke-interface {v6, v0}, Lcom/tencent/beacon/base/net/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/beacon/pack/SocketRequestPackage;

    .line 10
    invoke-direct {v1, v12, v6}, Lcom/tencent/beacon/base/net/adapter/f;->a(Ljava/net/Socket;Lcom/tencent/beacon/pack/SocketRequestPackage;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getType()Lcom/tencent/beacon/base/net/RequestType;

    move-result-object v0

    sget-object v6, Lcom/tencent/beacon/base/net/RequestType;->EVENT:Lcom/tencent/beacon/base/net/RequestType;

    if-ne v0, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v12, v0}, Lcom/tencent/beacon/base/net/adapter/f;->a(Ljava/net/Socket;Z)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "402"

    if-eqz v0, :cond_7

    .line 12
    :try_start_3
    array-length v7, v0

    if-gtz v7, :cond_3

    goto/16 :goto_3

    .line 13
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3, v9, v5, v7}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v5, v1, Lcom/tencent/beacon/base/net/adapter/f;->a:Lcom/tencent/beacon/base/net/a/c;

    invoke-interface {v5, v0}, Lcom/tencent/beacon/base/net/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/pack/SocketResponsePackage;

    if-nez v0, :cond_5

    .line 15
    new-instance v0, Lcom/tencent/beacon/base/net/d;
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "responsePackage == null"

    :try_start_4
    invoke-direct {v0, v11, v6, v14, v3}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v12, :cond_4

    .line 16
    invoke-virtual {v12}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    :try_start_5
    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 18
    invoke-static {v2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v5, "socket response code: %s, header: %s, msg: %s"

    .line 19
    :try_start_6
    iget v7, v0, Lcom/tencent/beacon/pack/SocketResponsePackage;->statusCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/tencent/beacon/pack/SocketResponsePackage;->header:Ljava/util/Map;

    iget-object v13, v0, Lcom/tencent/beacon/pack/SocketResponsePackage;->msg:Ljava/lang/String;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v7, v14, v10

    aput-object v8, v14, v9

    const/4 v7, 0x2

    aput-object v13, v14, v7

    invoke-static {v3, v7, v5, v14}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget v3, v0, Lcom/tencent/beacon/pack/SocketResponsePackage;->statusCode:I

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_6

    .line 21
    invoke-direct {v1, v2, v11, v0}, Lcom/tencent/beacon/base/net/adapter/f;->a(Lcom/tencent/beacon/base/net/call/Callback;Ljava/lang/String;Lcom/tencent/beacon/pack/SocketResponsePackage;)V

    goto :goto_2

    .line 22
    :cond_6
    new-instance v3, Lcom/tencent/beacon/base/net/d;

    iget v5, v0, Lcom/tencent/beacon/pack/SocketResponsePackage;->statusCode:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/beacon/pack/SocketResponsePackage;->msg:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v11, v6, v5, v0}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V
    :try_end_6
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    if-eqz v12, :cond_9

    .line 23
    invoke-virtual {v12}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 24
    :try_start_7
    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_8

    .line 25
    :cond_7
    :goto_3
    :try_start_8
    new-instance v0, Lcom/tencent/beacon/base/net/d;
    :try_end_8
    .catch Ljava/net/ConnectException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v3, "receiveData == null"

    :try_start_9
    invoke-direct {v0, v11, v6, v14, v3}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V
    :try_end_9
    .catch Ljava/net/ConnectException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v12, :cond_8

    .line 26
    invoke-virtual {v12}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 27
    :try_start_a
    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 28
    invoke-static {v2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    return-void

    :catchall_0
    move-exception v0

    move-object v15, v0

    move-object/from16 v16, v12

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v15, v0

    move-object/from16 v16, v12

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v15, v0

    move-object/from16 v16, v12

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v15, v0

    const/16 v16, 0x0

    :goto_5
    const-string v0, "SocketAdapter socket request error: %s"

    .line 29
    :try_start_b
    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v3, v4, v10

    invoke-static {v0, v4}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {v15}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    .line 31
    new-instance v0, Lcom/tencent/beacon/base/net/d;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const-string v12, "449"

    const-string v14, " unknown request error!"

    const/4 v13, -0x1

    move-object v10, v0

    :try_start_c
    invoke-direct/range {v10 .. v15}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v16, :cond_9

    .line 32
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 33
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v15, v0

    const/16 v16, 0x0

    .line 34
    :goto_6
    :try_start_e
    new-instance v0, Lcom/tencent/beacon/base/net/d;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const-string v12, "401"

    const-string v14, " request time more than 30s"

    const/4 v13, -0x1

    move-object v10, v0

    :try_start_f
    invoke-direct/range {v10 .. v15}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v16, :cond_9

    .line 35
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 36
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v15, v0

    const/16 v16, 0x0

    .line 37
    :goto_7
    :try_start_11
    new-instance v0, Lcom/tencent/beacon/base/net/d;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    const-string v12, "401"

    const-string v14, " connect time more than 30s"

    const/4 v13, -0x1

    move-object v10, v0

    :try_start_12
    invoke-direct/range {v10 .. v15}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v16, :cond_9

    .line 38
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 39
    :try_start_13
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    .line 40
    invoke-static {v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    :cond_9
    :goto_8
    return-void

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v16, :cond_a

    .line 41
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 42
    :try_start_14
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v3, v0

    .line 43
    invoke-static {v3}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    .line 44
    :cond_a
    :goto_9
    throw v2
.end method

.method public request(Lcom/tencent/beacon/base/net/call/e;Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/e;",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "Lcom/tencent/beacon/base/net/BResponse;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
