.class public Lcom/tencent/qmsp/sdk/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qmsp/sdk/b/a$d;,
        Lcom/tencent/qmsp/sdk/b/a$b;,
        Lcom/tencent/qmsp/sdk/b/a$c;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:Lcom/tencent/qmsp/sdk/b/a$b;

.field private static g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/qmsp/sdk/b/a;->a:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/qmsp/sdk/b/a;->b:[B

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/tencent/qmsp/sdk/b/a;->c:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/tencent/qmsp/sdk/b/a;->d:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/tencent/qmsp/sdk/b/a;->e:[B

    sget-object v0, Lcom/tencent/qmsp/sdk/b/a$b;->d:Lcom/tencent/qmsp/sdk/b/a$b;

    sput-object v0, Lcom/tencent/qmsp/sdk/b/a;->f:Lcom/tencent/qmsp/sdk/b/a$b;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/tencent/qmsp/sdk/b/a;->g:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0x63t
        -0x3t
        0x51t
        0x3ft
        0x75t
        0x74t
        -0xet
        0x28t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x55t
        -0x80t
    .end array-data

    :array_2
    .array-data 1
        0x4t
        0x55t
        -0x80t
        0xft
        0xdt
        0x19t
        0x54t
        -0x4et
        0x15t
        0x5bt
        -0x70t
        0x73t
        0x7bt
        0xbt
        0x76t
        -0x7t
        0x21t
        0x79t
        -0x43t
        0x47t
    .end array-data

    :array_3
    .array-data 1
        -0x3at
        -0x1at
        -0x33t
        -0x13t
    .end array-data

    :array_4
    .array-data 1
        -0x3at
        -0x1at
        -0x33t
        -0x13t
        0x1et
        -0x3t
        -0x15t
        -0x1dt
        0x57t
        0x27t
        0x28t
        0xct
        -0x77t
        -0x28t
        -0x54t
        0x41t
    .end array-data
.end method

.method public static a(ILjava/lang/String;ILorg/json/JSONObject;)Lcom/tencent/qmsp/sdk/b/a$d;
    .locals 5

    sget-object v0, Lcom/tencent/qmsp/sdk/b/a;->g:Ljava/lang/ThreadLocal;

    sget-object v1, Lcom/tencent/qmsp/sdk/b/a$c;->c:Lcom/tencent/qmsp/sdk/b/a$c;

    invoke-virtual {v1}, Lcom/tencent/qmsp/sdk/b/a$c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    new-instance v0, Ljava/net/InetSocketAddress;

    sget-object v1, Lcom/tencent/qmsp/sdk/b/a;->a:[B

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object v1

    const v2, 0x82a5

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomConnTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/qmsp/sdk/b/a;->a(ILjava/lang/String;ILorg/json/JSONObject;Ljava/io/DataOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getAtomReadTimeOut()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance p0, Ljava/io/DataInputStream;

    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {p0}, Lcom/tencent/qmsp/sdk/b/a;->a(Ljava/io/DataInputStream;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lcom/tencent/qmsp/sdk/b/a$d;

    sget-object p3, Lcom/tencent/qmsp/sdk/b/a;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {p3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/tencent/qmsp/sdk/b/a$d;-><init>(Lorg/json/JSONObject;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/b/a;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/b/a;->a(Ljava/io/Closeable;)V

    :try_start_5
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p2

    :catch_1
    move-object v0, v2

    :catch_2
    :try_start_6
    new-instance p0, Lcom/tencent/qmsp/sdk/b/a$d;

    sget-object p1, Lcom/tencent/qmsp/sdk/b/a$c;->i:Lcom/tencent/qmsp/sdk/b/a$c;

    invoke-virtual {p1}, Lcom/tencent/qmsp/sdk/b/a$c;->a()I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/tencent/qmsp/sdk/b/a$d;-><init>(Lorg/json/JSONObject;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v2}, Lcom/tencent/qmsp/sdk/b/a;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/b/a;->a(Ljava/io/Closeable;)V

    :try_start_7
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p0

    :catchall_0
    move-object p0, v2

    goto :goto_3

    :catch_4
    :try_start_8
    new-instance p0, Lcom/tencent/qmsp/sdk/b/a$d;

    sget-object p1, Lcom/tencent/qmsp/sdk/b/a$c;->h:Lcom/tencent/qmsp/sdk/b/a$c;

    invoke-virtual {p1}, Lcom/tencent/qmsp/sdk/b/a$c;->a()I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/tencent/qmsp/sdk/b/a$d;-><init>(Lorg/json/JSONObject;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {v2}, Lcom/tencent/qmsp/sdk/b/a;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/tencent/qmsp/sdk/b/a;->a(Ljava/io/Closeable;)V

    :try_start_9
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_2

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object p0

    :catchall_1
    move-object p0, v2

    move-object v0, p0

    :catchall_2
    :goto_3
    :try_start_a
    sget-object p1, Lcom/tencent/qmsp/sdk/b/a;->g:Ljava/lang/ThreadLocal;

    sget-object p2, Lcom/tencent/qmsp/sdk/b/a$c;->l:Lcom/tencent/qmsp/sdk/b/a$c;

    invoke-virtual {p2}, Lcom/tencent/qmsp/sdk/b/a$c;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/b/a;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/b/a;->a(Ljava/io/Closeable;)V

    :try_start_b
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    new-instance p0, Lcom/tencent/qmsp/sdk/b/a$d;

    sget-object p1, Lcom/tencent/qmsp/sdk/b/a;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/tencent/qmsp/sdk/b/a$d;-><init>(Lorg/json/JSONObject;I)V

    return-object p0

    :catchall_3
    move-exception p1

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/b/a;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/b/a;->a(Ljava/io/Closeable;)V

    :try_start_c
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_5

    :catch_7
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    throw p1
.end method

.method private static a(Lcom/tencent/qmsp/sdk/b/a$b;[B)Lorg/json/JSONObject;
    .locals 5

    sget-object v0, Lcom/tencent/qmsp/sdk/b/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const-string v1, "UTF-8"

    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v0, Lcom/tencent/qmsp/sdk/b/a;->e:[B

    sget-object v3, Lcom/tencent/qmsp/sdk/b/a;->b:[B

    invoke-static {v3}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v3, Lcom/tencent/qmsp/sdk/b/a;->c:[B

    invoke-static {v3}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v2, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private static a(Ljava/io/DataInputStream;)Lorg/json/JSONObject;
    .locals 4

    const/16 v0, 0x1c

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    const/16 v2, 0x12

    const/16 v3, 0xa

    invoke-static {v0, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    sget-object v3, Lcom/tencent/qmsp/sdk/b/a;->g:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/tencent/qmsp/sdk/b/a$b;->a(I)Lcom/tencent/qmsp/sdk/b/a$b;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    new-array v3, v0, [B

    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {v2, v3}, Lcom/tencent/qmsp/sdk/b/a;->a(Lcom/tencent/qmsp/sdk/b/a$b;[B)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/tencent/qmsp/sdk/b/a;->g:Ljava/lang/ThreadLocal;

    sget-object v0, Lcom/tencent/qmsp/sdk/b/a$c;->m:Lcom/tencent/qmsp/sdk/b/a$c;

    :goto_0
    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/b/a$c;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1

    :catch_1
    sget-object p0, Lcom/tencent/qmsp/sdk/b/a;->g:Ljava/lang/ThreadLocal;

    sget-object v0, Lcom/tencent/qmsp/sdk/b/a$c;->j:Lcom/tencent/qmsp/sdk/b/a$c;

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;ILorg/json/JSONObject;Ljava/io/DataOutputStream;)V
    .locals 2

    const-string v0, "UTF-8"

    sget-object v1, Lcom/tencent/qmsp/sdk/b/a;->d:[B

    invoke-virtual {p4, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p4, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p4, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 p0, 0x0

    invoke-virtual {p4, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p4, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p4, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object p0, Lcom/tencent/qmsp/sdk/b/a;->f:Lcom/tencent/qmsp/sdk/b/a$b;

    :try_start_0
    invoke-static {p0, p3}, Lcom/tencent/qmsp/sdk/b/a;->a(Lcom/tencent/qmsp/sdk/b/a$b;Lorg/json/JSONObject;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    sget-object p0, Lcom/tencent/qmsp/sdk/b/a$b;->e:Lcom/tencent/qmsp/sdk/b/a$b;

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qmsp/sdk/b/a$b;->a()I

    move-result p0

    invoke-virtual {p4, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length p1, p0

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p4, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length p1, p2

    invoke-virtual {p4, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 p1, 0x1

    invoke-virtual {p4, p1}, Ljava/io/DataOutputStream;->write(I)V

    array-length p1, p0

    invoke-virtual {p4, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p4, p0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p4, p2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p4}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static a(Lcom/tencent/qmsp/sdk/b/a$b;Lorg/json/JSONObject;)[B
    .locals 4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v0, Lcom/tencent/qmsp/sdk/b/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "unsupported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/tencent/qmsp/sdk/b/a;->e:[B

    sget-object v2, Lcom/tencent/qmsp/sdk/b/a;->b:[B

    invoke-static {v2}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v2, Lcom/tencent/qmsp/sdk/b/a;->c:[B

    invoke-static {v2}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v0, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method
