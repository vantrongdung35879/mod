.class public Lcom/tencent/qmsp/sdk/d/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qmsp/sdk/d/e$b;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/qmsp/sdk/d/e;->a:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/qmsp/sdk/d/e;->b:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/tencent/qmsp/sdk/d/e;->c:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x8t
        0x59t
        -0x6ct
        0x46t
        0x3t
        0x1at
        0x27t
        -0x26t
        0x6t
        0x43t
        -0x5et
        0x67t
        0x1dt
        0x12t
        0x75t
        -0x52t
        0x1t
        0x41t
        -0x6at
        0x62t
        0xft
        0xat
        0x42t
        -0x24t
        0x4t
        0x24t
        -0x6ct
        0x6et
        0xft
        0x1ft
        0x54t
        -0x21t
        0x2ct
        0x41t
        -0x68t
        0x62t
        0x29t
        0xat
        0x53t
        -0x30t
        0x3ft
        0x20t
        -0x6ct
        0x49t
        0x5t
        0x2at
        0x42t
        -0x34t
        0x2bt
        0x60t
        -0x43t
        0x53t
        0xdt
        0x33t
        0x22t
        -0x12t
        0x34t
        0x49t
        -0x41t
        0x76t
        0xat
        0x36t
        0x5ct
        -0xct
        0x74t
        0x69t
        -0x47t
        0x69t
        0xdt
        0x15t
        0x7ct
        -0xat
        0x3t
        0x72t
        -0x57t
        0x61t
        0x2bt
        0xft
        0x76t
        -0x36t
        0x23t
        0x3ft
        -0x5dt
        0x65t
        0x0t
        0x30t
        0x42t
        -0x37t
        0x11t
        0x21t
        -0x16t
        0x6ct
        0xbt
        0x63t
        0x51t
        -0x36t
        0x2bt
        0x24t
        -0x15t
        0x63t
        0x78t
        0x68t
        0x42t
        -0x2et
        0x6t
        0x58t
        -0x7et
        0x55t
        0x1bt
        0x3dt
        0x21t
        -0x56t
        0x34t
        0x69t
        -0x4ct
        0x63t
        0x8t
        0xet
        0x56t
        -0x13t
        0x12t
        0x25t
        -0x8t
        0x12t
        0x7et
        0xct
        0x53t
        -0x58t
        0x16t
        0x71t
        -0x50t
        0x62t
        0x28t
        0x3ft
        0x6dt
        -0x10t
        0x30t
        0x76t
        -0x44t
        0x48t
        0x2dt
        0x18t
        0x56t
        -0x19t
        0x23t
        0x58t
        -0x1ct
        0x6at
        0x7bt
        0x21t
        0x72t
        -0x2dt
        0x75t
        0x51t
        -0x5et
        0x6ft
        0x3t
        0x3ct
        0x78t
        -0x56t
        0x6et
        0x7bt
        -0x1ct
        0x69t
        0x65t
        0x34t
        0x5et
        -0x13t
        0x1ft
        0x61t
        -0x43t
        0x68t
        0x3t
        0x29t
        0x75t
        -0x54t
        0x33t
        0x52t
        -0x41t
        0x56t
        0x6t
        0x39t
        0x3ct
        -0x56t
        0x7ct
        0x73t
        -0x59t
        0x17t
        0x1et
        0xbt
        0x3ct
        -0x27t
        0x34t
        0x43t
        -0x7dt
        0x42t
        0x24t
        0x29t
        0x3ct
        -0x7t
        0x14t
        0x45t
        -0x50t
        0x6ft
        0x78t
        0x29t
        0x59t
        -0xat
        0x2ft
        0x67t
        -0x66t
        0x64t
        0xft
        0xat
        0x56t
        -0x21t
    .end array-data

    :array_1
    .array-data 1
        0x8t
        0x54t
        -0x1at
        0x57t
        0x27t
        0x2ft
        0x7ft
        -0x31t
        0x16t
        0x51t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x17t
        0x43t
        -0x6et
    .end array-data
.end method

.method public static a(Ljava/io/DataInputStream;)Lcom/tencent/qmsp/sdk/d/e$b;
    .locals 4

    new-instance v0, Lcom/tencent/qmsp/sdk/d/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qmsp/sdk/d/e$b;-><init>(Lcom/tencent/qmsp/sdk/d/e$a;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lcom/tencent/qmsp/sdk/d/e$b;->a:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lcom/tencent/qmsp/sdk/d/e$b;->b:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Lcom/tencent/qmsp/sdk/d/e$b;->c:I

    iget v2, v0, Lcom/tencent/qmsp/sdk/d/e$b;->c:I

    if-lez v2, :cond_1

    iget v2, v0, Lcom/tencent/qmsp/sdk/d/e$b;->c:I

    const/16 v3, 0x100

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/tencent/qmsp/sdk/d/e$b;->c:I

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/tencent/qmsp/sdk/d/e$b;->d:[B

    iget-object v2, v0, Lcom/tencent/qmsp/sdk/d/e$b;->d:[B

    invoke-virtual {p0, v2}, Ljava/io/DataInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/tencent/qmsp/sdk/d/e;->a:[B

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    :try_start_0
    sget-object p0, Lcom/tencent/qmsp/sdk/d/e;->c:[B

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static a(Ljava/io/DataInputStream;I[BLjava/security/PublicKey;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/tencent/qmsp/sdk/d/e;->b:[B

    invoke-static {v1}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const/16 p3, 0x2000

    new-array v2, p3, [B

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-virtual {p0, v2, v0, p1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    :goto_1
    if-eqz v3, :cond_2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v2, v0, v3}, Ljava/security/Signature;->update([BII)V

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {v1, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private static a([B[BLjava/security/PublicKey;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tencent/qmsp/sdk/d/e;->b:[B

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result p0

    const/16 v2, 0x8

    if-lt p0, v2, :cond_6

    const/high16 v3, 0x500000

    if-le p0, v3, :cond_1

    goto :goto_5

    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const v4, 0x51536563

    if-eq v3, v4, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v1

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-lez v3, :cond_5

    const/16 v4, 0x100

    if-gt v3, v4, :cond_5

    sub-int/2addr p0, v2

    if-lt v3, p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lcom/tencent/qmsp/sdk/d/e;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v1

    :cond_4
    :try_start_5
    new-array v2, v3, [B

    sub-int/2addr p0, v3

    new-array p0, p0, [B

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->read([B)I

    invoke-static {p0, v2, p1}, Lcom/tencent/qmsp/sdk/d/e;->a([B[BLjava/security/PublicKey;)Z

    move-result p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_7

    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object p0

    :cond_5
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object v1

    :cond_6
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_6

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    return-object v1

    :catch_5
    move-exception p0

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_9

    :catch_6
    move-exception p0

    move-object v0, v1

    :goto_7
    :try_start_9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v0, :cond_8

    :cond_7
    :try_start_a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_8

    :catch_7
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_8
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_9

    :try_start_b
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_a

    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_a
    throw p0
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v4, 0x8c

    if-gt v3, v4, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v1

    :cond_1
    sub-int/2addr v3, v4

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    invoke-static {v2}, Lcom/tencent/qmsp/sdk/d/e;->a(Ljava/io/DataInputStream;)Lcom/tencent/qmsp/sdk/d/e$b;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v4, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v1

    :cond_2
    :try_start_5
    iget v5, v4, Lcom/tencent/qmsp/sdk/d/e$b;->a:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const v6, 0x51536563

    if-eq v5, v6, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return v1

    :cond_3
    :try_start_7
    iget v5, v4, Lcom/tencent/qmsp/sdk/d/e$b;->b:I

    if-lez v5, :cond_7

    iget v5, v4, Lcom/tencent/qmsp/sdk/d/e$b;->b:I

    const/high16 v6, 0x500000

    if-le v5, v6, :cond_4

    goto :goto_7

    :cond_4
    iget v5, v4, Lcom/tencent/qmsp/sdk/d/e$b;->b:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eq v3, v5, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return v1

    :cond_5
    :try_start_9
    invoke-static {p1}, Lcom/tencent/qmsp/sdk/d/e;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez p1, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return v1

    :cond_6
    :try_start_b
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    iget p0, v4, Lcom/tencent/qmsp/sdk/d/e$b;->b:I

    iget-object v0, v4, Lcom/tencent/qmsp/sdk/d/e$b;->d:[B

    invoke-static {v3, p0, v0, p1}, Lcom/tencent/qmsp/sdk/d/e;->a(Ljava/io/DataInputStream;I[BLjava/security/PublicKey;)Z

    move-result p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    :try_start_e
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    return p0

    :catchall_0
    move-exception p0

    goto :goto_d

    :catch_7
    move-exception p0

    goto :goto_9

    :cond_7
    :goto_7
    :try_start_f
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_8

    :catch_8
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_8
    return v1

    :catchall_1
    move-exception p0

    goto :goto_e

    :catch_9
    move-exception p0

    move-object v3, v0

    :goto_9
    move-object v0, v2

    goto :goto_a

    :catchall_2
    move-exception p0

    move-object p1, v0

    goto :goto_f

    :catch_a
    move-exception p0

    move-object v3, v0

    :goto_a
    :try_start_10
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v0, :cond_8

    :try_start_11
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_b

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_b
    if-eqz v3, :cond_9

    :try_start_12
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_c

    :catch_c
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_c
    return v1

    :catchall_3
    move-exception p0

    move-object v2, v0

    :goto_d
    move-object v0, v3

    :goto_e
    move-object p1, v0

    move-object v0, v2

    :goto_f
    if-eqz v0, :cond_a

    :try_start_13
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    goto :goto_10

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_10
    if-eqz p1, :cond_b

    :try_start_14
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e

    goto :goto_11

    :catch_e
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_11
    throw p0
.end method
