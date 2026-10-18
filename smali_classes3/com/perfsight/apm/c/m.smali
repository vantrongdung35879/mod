.class public Lcom/perfsight/apm/c/m;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/perfsight/apm/c/m;->c:I

    iput-object p1, p0, Lcom/perfsight/apm/c/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/perfsight/apm/c/m;->b:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/perfsight/apm/c/m;->d:I

    const-string p1, "default"

    iput-object p1, p0, Lcom/perfsight/apm/c/m;->e:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/perfsight/apm/c/m;->a:Landroid/content/Context;

    const-string v1, "TAPM_CACHED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "TAPM_CACHED_VK"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo p1, "writeQualityCache"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "writeQualityCache error"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .locals 9

    const-string v0, "QccSYNC, Fetch qcc file : "

    const-string v1, "QccSYNC, fetch qcc file, total size is "

    new-instance v2, Lcom/perfsight/apm/c/l;

    invoke-direct {v2}, Lcom/perfsight/apm/c/l;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perfsight/apm/c/m;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/perfsight/apm/c/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "QCC_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perfsight/apm/c/m;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p1, :cond_0

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "QccSYNC, begin to fetch qcc file:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 p1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v6, :cond_2

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return p1

    :cond_2
    :try_start_1
    iget v7, p0, Lcom/perfsight/apm/c/m;->c:I

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v7, p0, Lcom/perfsight/apm/c/m;->c:I

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v7, 0xc8

    if-eq v1, v7, :cond_4

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v0, ", responseCode + "

    :try_start_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return p1

    :cond_4
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_7

    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_0
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return p1

    :cond_7
    :try_start_5
    iget-object v1, p0, Lcom/perfsight/apm/c/m;->a:Landroid/content/Context;

    invoke-virtual {v1, p2, p1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p2, :cond_a

    if-eqz v0, :cond_8

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_1
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    return p1

    :cond_a
    :try_start_7
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/16 p2, 0x1000

    :try_start_8
    new-array p2, p2, [B

    :goto_2
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    invoke-virtual {v1, p2, p1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2

    :cond_b
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v4, "QccSYNC, finish fetch qcc file, cost time is "

    :try_start_9
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v0, :cond_c

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_3
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_9

    :catch_4
    move-exception p2

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v1, v2

    goto :goto_a

    :catch_5
    move-exception p2

    move-object v1, v2

    :goto_5
    move-object v2, v0

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object v1, v2

    goto :goto_b

    :catch_6
    move-exception p2

    move-object v1, v2

    goto :goto_6

    :catchall_3
    move-exception p1

    move-object v1, v2

    move-object v6, v1

    goto :goto_b

    :catch_7
    move-exception p2

    move-object v1, v2

    move-object v6, v1

    :goto_6
    :try_start_c
    iget v0, p0, Lcom/perfsight/apm/c/m;->c:I

    add-int/lit16 v0, v0, 0x7d0

    iput v0, p0, Lcom/perfsight/apm/c/m;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const-string v3, "QccSYNC, fetch qcc file failed"

    :try_start_d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v2, :cond_e

    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_7

    :catch_8
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_7
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    if-eqz v1, :cond_10

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_8

    :catch_9
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_8
    return p1

    :catchall_4
    move-exception p1

    move-object v0, v2

    :goto_9
    move-object v2, v6

    move-object v6, v2

    :goto_a
    move-object v2, v0

    :goto_b
    if-eqz v2, :cond_11

    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_c

    :catch_a
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_11
    :goto_c
    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    if-eqz v1, :cond_13

    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_d

    :catch_b
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    :goto_d
    throw p1
.end method

.method private d()I
    .locals 3

    iget-object v0, p0, Lcom/perfsight/apm/c/m;->a:Landroid/content/Context;

    const-string v1, "TAPM_CACHED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v2, "TAPM_CACHED_VK"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method


# virtual methods
.method public a()Z
    .locals 18

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/perfsight/apm/c/m;->d()I

    move-result v0

    const-string v2, "QccSYNC, cannot open asset_qcc_file"

    const-wide v4, 0x408f400000000000L    # 1000.0

    const-string v6, "QccSYNC, cannot close file"

    const/4 v7, 0x0

    if-lez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "asset_qcc_file_"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double v8, v8, v4

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v1, Lcom/perfsight/apm/c/m;->a:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "QCC_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/perfsight/apm/c/m;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9, v8}, Lcom/perfsight/apm/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "QccSYNC, CpAssetFile failed"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/16 v0, -0x3f2

    iput v0, v1, Lcom/perfsight/apm/c/m;->d:I

    return v7

    :cond_1
    new-instance v9, Lcom/perfsight/apm/c/s;

    invoke-direct {v9}, Lcom/perfsight/apm/c/s;-><init>()V

    :try_start_0
    iget-object v0, v1, Lcom/perfsight/apm/c/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v9, v0}, Lcom/perfsight/apm/c/s;->a(Ljava/io/InputStream;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v2, "Parse Asset qcc config error, return"

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/16 v2, -0x3f0

    iput v2, v1, Lcom/perfsight/apm/c/m;->d:I

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {v6}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/perfsight/apm/c/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return v7

    :cond_3
    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    invoke-static {v6}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/perfsight/apm/c/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {v9}, Lcom/perfsight/apm/c/s;->b()I

    move-result v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "QccSYNC, get default qcc config version: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    if-lez v0, :cond_5

    invoke-direct {v1, v0}, Lcom/perfsight/apm/c/m;->a(I)V

    :cond_5
    :goto_3
    const/4 v8, -0x1

    const-string v9, ""

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v17, v9

    move v9, v0

    move-object/from16 v0, v17

    :goto_4
    const/16 v12, 0xa

    if-eq v10, v9, :cond_e

    add-int/lit8 v13, v11, 0x1

    if-ge v11, v12, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "QccSYNC, Redirect "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "QccSYNC_"

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    mul-double v14, v14, v4

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v14, v0, 0x1

    if-ge v0, v12, :cond_8

    invoke-direct {v1, v9, v11}, Lcom/perfsight/apm/c/m;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_7

    :cond_6
    const-wide/16 v15, 0xc8

    :try_start_3
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v15, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Sleep error: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :goto_6
    iget-object v0, v1, Lcom/perfsight/apm/c/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "delete error: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->e(Ljava/lang/String;)V

    :cond_7
    move v0, v14

    goto :goto_5

    :cond_8
    :goto_7
    if-lt v14, v12, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "QccSYNC, cannot fetch target qcc config: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/16 v0, -0x3f3

    iput v0, v1, Lcom/perfsight/apm/c/m;->d:I

    return v7

    :cond_9
    :try_start_4
    iget-object v0, v1, Lcom/perfsight/apm/c/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    new-instance v3, Lcom/perfsight/apm/c/s;

    invoke-direct {v3}, Lcom/perfsight/apm/c/s;-><init>()V

    invoke-virtual {v3, v0}, Lcom/perfsight/apm/c/s;->a(Ljava/io/InputStream;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v0, "QccSYNC, Parse Qcc Config failed"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/perfsight/apm/c/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_a
    :goto_9
    move-object v0, v11

    move v11, v13

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v3}, Lcom/perfsight/apm/c/s;->b()I

    move-result v3

    if-le v3, v8, :cond_c

    move v10, v9

    move v9, v3

    :cond_c
    if-eqz v0, :cond_a

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    :catch_5
    invoke-static {v6}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    move v11, v13

    :cond_e
    if-ge v11, v12, :cond_f

    if-ne v10, v9, :cond_f

    invoke-direct {v1, v10}, Lcom/perfsight/apm/c/m;->a(I)V

    iput-object v0, v1, Lcom/perfsight/apm/c/m;->e:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "QccSYNC, fetch failed, LocalVersion: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", LinkVersion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", RT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/16 v0, -0x3f4

    iput v0, v1, Lcom/perfsight/apm/c/m;->d:I

    return v7
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/perfsight/apm/c/m;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/c/m;->e:Ljava/lang/String;

    return-object v0
.end method
