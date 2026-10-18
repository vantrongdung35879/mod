.class public Lcom/tencent/qmsp/sdk/c/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/qmsp/sdk/c/m;->a:[B

    return-void

    :array_0
    .array-data 1
        0x60t
        0x6et
        -0x6dt
        0x52t
        0x6dt
        0x2t
        0x24t
        -0x4dt
        0x6ct
        0x3bt
        -0x50t
        0xat
        0x70t
        0x7at
        0x38t
        -0x43t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;[BLjava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    :try_start_0
    sget-object p3, Lcom/tencent/qmsp/sdk/c/m;->a:[B

    invoke-virtual {p0, p3}, Lcom/tencent/qmsp/sdk/c/m;->a([B)Ljava/lang/String;

    move-result-object p3

    :cond_0
    new-instance v2, Lcom/tencent/qmsp/sdk/f/b;

    invoke-direct {v2}, Lcom/tencent/qmsp/sdk/f/b;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Lcom/tencent/qmsp/sdk/f/b;->a([B[B)[B

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    new-instance p3, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const p1, 0x12345678

    :try_start_1
    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p3, p4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p3, p2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    move-object v1, p3

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, p3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return v0

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_9

    const v3, 0x19000

    if-le v0, v3, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const v4, 0x12345678

    if-eq v3, v4, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v1

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-lez v3, :cond_8

    if-le v3, p3, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v3, 0x1

    if-eq p3, v3, :cond_4

    :try_start_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v1

    :cond_4
    sub-int/2addr v0, v2

    :try_start_5
    new-array p3, v0, [B

    invoke-virtual {p1, p3}, Ljava/io/DataInputStream;->read([B)I

    move-result v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eq v0, v2, :cond_5

    :try_start_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v1

    :cond_5
    if-nez p2, :cond_6

    :try_start_7
    sget-object p2, Lcom/tencent/qmsp/sdk/c/m;->a:[B

    invoke-virtual {p0, p2}, Lcom/tencent/qmsp/sdk/c/m;->a([B)Ljava/lang/String;

    move-result-object p2

    :cond_6
    new-instance v2, Lcom/tencent/qmsp/sdk/f/b;

    invoke-direct {v2}, Lcom/tencent/qmsp/sdk/f/b;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3, v0, p2}, Lcom/tencent/qmsp/sdk/f/b;->a([BII[B)[B

    move-result-object p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez p2, :cond_7

    :try_start_8
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object v1

    :cond_7
    :try_start_9
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object p2

    :cond_8
    :goto_5
    :try_start_a
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    return-object v1

    :cond_9
    :goto_7
    :try_start_b
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_8

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_8
    return-object v1

    :catch_7
    move-exception p2

    goto :goto_9

    :catchall_0
    move-exception p1

    goto :goto_b

    :catch_8
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    :goto_9
    :try_start_c
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz p1, :cond_a

    :try_start_d
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_a

    :catch_9
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    return-object v1

    :catchall_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    :goto_b
    if-eqz v1, :cond_b

    :try_start_e
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_c

    :catch_a
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_c
    throw p1
.end method
