.class public Lcom/tencent/qmsp/sdk/b/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x3

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lcom/tencent/qmsp/sdk/b/d;->a:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x10t
        0x63t
        -0x4at
        0x52t
        0x63t
        0x1at
        0x70t
        -0x8t
        0x2bt
        0x64t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x8t
        0x7ft
        -0x57t
        0x49t
        0x22t
        0x37t
        0x76t
        -0x4et
        0x71t
        0x3et
        -0x1dt
        0x0t
        0x66t
        0x38t
        0x78t
        -0x10t
        0x35t
        0x71t
        -0x59t
        0x49t
        0x2ct
        0x37t
        0x72t
        -0x5at
        0x65t
        0x5dt
        -0x80t
        0x69t
        0xbt
        0x7bt
        0x22t
        -0x4dt
        0x75t
        0x2bt
        -0xdt
        0x77t
        0x27t
        0x35t
        0x73t
        -0xet
        0x32t
        0x63t
        -0xdt
        0x6et
        0x1at
        0x60t
        0x37t
        -0x27t
        0x2ct
        0x77t
        -0x6at
        0x58t
        0x3at
        0x72t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x14t
        0x60t
        -0x3t
        0x44t
        0x21t
        0x2ct
        0x79t
    .end array-data
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/b/d;->a:[[B

    aget-object p0, v0, p0

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/tencent/qmsp/sdk/b/b;)V
    .locals 11

    const-string v0, "dwl:"

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/b/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qmsp/sdk/b/b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/qmsp/sdk/b/b;->c:Ljava/lang/String;

    new-instance v4, Lcom/tencent/qmsp/sdk/b/c;

    invoke-direct {v4, p0}, Lcom/tencent/qmsp/sdk/b/c;-><init>(Lcom/tencent/qmsp/sdk/b/b;)V

    const/4 p0, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    instance-of v8, v7, Ljava/net/HttpURLConnection;

    if-nez v8, :cond_0

    return-void

    :cond_0
    const/16 v8, 0xbb8

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-static {v6}, Lcom/tencent/qmsp/sdk/b/d;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Lcom/tencent/qmsp/sdk/b/d;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/qmsp/sdk/b/d;->a(Ljava/io/InputStream;)[B

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v8}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_2
    iput v6, v4, Lcom/tencent/qmsp/sdk/b/c;->a:I

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/b/d;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "  ok"

    :try_start_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lcom/tencent/qmsp/sdk/f/g;->c(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    iput v5, v4, Lcom/tencent/qmsp/sdk/b/c;->a:I

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/b/d;->a(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  fail"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v6, v0}, Lcom/tencent/qmsp/sdk/f/g;->c(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/tencent/qmsp/sdk/c/f;->i()Lcom/tencent/qmsp/sdk/c/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qmsp/sdk/c/f;->d()Lcom/tencent/qmsp/sdk/d/c;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/tencent/qmsp/sdk/d/c;->a(Lcom/tencent/qmsp/sdk/b/c;)V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
