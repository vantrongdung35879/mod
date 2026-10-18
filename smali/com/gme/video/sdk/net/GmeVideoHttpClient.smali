.class public Lcom/gme/video/sdk/net/GmeVideoHttpClient;
.super Ljava/lang/Object;
.source "GmeVideoHttpClient.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GmeVideoHttpClient"

.field private static m_pInstance:Lcom/gme/video/sdk/net/GmeVideoHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gme/video/sdk/net/GmeVideoHttpClient;
    .locals 2

    .line 37
    const-class v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->m_pInstance:Lcom/gme/video/sdk/net/GmeVideoHttpClient;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/gme/video/sdk/net/GmeVideoHttpClient;

    invoke-direct {v1}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;-><init>()V

    sput-object v1, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->m_pInstance:Lcom/gme/video/sdk/net/GmeVideoHttpClient;

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->m_pInstance:Lcom/gme/video/sdk/net/GmeVideoHttpClient;

    return-object v0

    :catchall_0
    move-exception v1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic lambda$downloadFileFromCos$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    .line 367
    const-string v11, "downloadFileFromCos|download file failed. network is invalid."

    .line 0
    const-string v0, "fileRet = "

    const-string v12, "downloadFileFromCos|remote file is not exist. url="

    const-string v3, "downloadFileFromCos|network invalid. url="

    const-string v4, "downloadFileFromCos|errCode="

    .line 372
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v13, 0x6a

    const/4 v6, 0x0

    const/4 v14, 0x0

    if-eqz v5, :cond_0

    .line 373
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string v2, "downloadFileFromCos|file url is empty."

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object v15, v6

    move-object/from16 v19, v15

    goto/16 :goto_c

    .line 377
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 378
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string v2, "downloadFileFromCos|save path is empty."

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 384
    :cond_1
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_12

    .line 387
    :try_start_1
    const-string v5, "GET"

    invoke-virtual {v15, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 388
    const-string v5, "Authorization"

    move-object/from16 v7, p2

    invoke-virtual {v15, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v5, "Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v15, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v5, "Accept"

    const-string v7, "*/*"

    invoke-virtual {v15, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 393
    sget-object v7, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v8, v14, [Ljava/lang/Object;

    invoke-static {v7, v4, v8}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0xc8

    if-ne v5, v4, :cond_4

    .line 395
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 398
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    goto :goto_1

    .line 400
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    .line 402
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v7, v0, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f

    .line 405
    :try_start_2
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_9

    .line 412
    :try_start_3
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    const/16 v0, 0x400

    .line 415
    :try_start_4
    new-array v0, v0, [B

    const-wide/16 v3, 0x0

    .line 417
    :goto_2
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 418
    invoke-virtual {v7, v0, v14, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    int-to-long v5, v5

    add-long v16, v3, v5

    const-wide/32 v5, 0xf423f

    move-wide/from16 v3, v16

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-wide/from16 v7, p3

    .line 420
    :try_start_5
    invoke-static/range {v3 .. v8}, Lcom/gme/video/sdk/jni/GmeVideoHttpJni;->onProcess(JJJ)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-wide/from16 v3, v16

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_3
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v6, v18

    const/4 v13, 0x0

    goto/16 :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v19, v3

    goto :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v19, v3

    goto :goto_4

    :catch_8
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v19, v3

    goto :goto_6

    :catch_9
    move-exception v0

    move-object/from16 v18, v7

    :goto_3
    move-object/from16 v19, v6

    :goto_4
    move-object/from16 v6, v18

    goto/16 :goto_a

    :catch_a
    move-exception v0

    move-object/from16 v18, v7

    :goto_5
    move-object/from16 v19, v6

    :goto_6
    move-object/from16 v6, v18

    goto/16 :goto_b

    :catch_b
    move-exception v0

    move-object/from16 v18, v7

    move-object v3, v0

    .line 407
    :try_start_6
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v11, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    goto/16 :goto_c

    :catch_c
    move-exception v0

    move-object/from16 v19, v6

    :goto_7
    move-object/from16 v6, v18

    goto :goto_9

    :catch_d
    move-exception v0

    goto :goto_3

    :catch_e
    move-exception v0

    goto :goto_5

    :cond_4
    const/16 v0, 0x194

    if-ne v5, v0, :cond_5

    .line 424
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 427
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f

    :goto_8
    move-object/from16 v19, v6

    goto :goto_c

    :catch_f
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_9

    :catch_10
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_a

    :catch_11
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_b

    :catch_12
    move-exception v0

    move-object v15, v6

    move-object/from16 v19, v15

    .line 437
    :goto_9
    sget-object v3, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downloadFileFromCos|write file fail. path="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c

    :catch_13
    move-exception v0

    move-object v15, v6

    move-object/from16 v19, v15

    .line 434
    :goto_a
    sget-object v2, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v2, v11, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c

    :catch_14
    move-exception v0

    move-object v15, v6

    move-object/from16 v19, v15

    .line 431
    :goto_b
    sget-object v2, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 442
    :goto_c
    const-string v2, "downloadFileFromCos exception"

    if-eqz v6, :cond_6

    .line 444
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_15

    goto :goto_d

    :catch_15
    move-exception v0

    move-object v3, v0

    .line 446
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6
    :goto_d
    if-eqz v19, :cond_7

    .line 452
    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_16

    goto :goto_e

    :catch_16
    move-exception v0

    move-object v3, v0

    .line 454
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_7
    :goto_e
    if-eqz v15, :cond_8

    .line 459
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 461
    :cond_8
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->removeMapValue(J)V

    .line 462
    const-string v0, ""

    invoke-static {v13, v1, v0, v9, v10}, Lcom/gme/video/sdk/jni/GmeVideoHttpJni;->handleResponse(ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic lambda$downloadFileFromS3$3(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 9

    const-string v0, "downloadFileFromS3|remote file is not exist. url="

    const-string v1, "downloadFileFromS3|network invalid. url="

    const-string v2, "downloadFileFromS3|errCode="

    .line 483
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x6a

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 484
    sget-object p1, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string p2, "downloadFileFromS3|file url is empty."

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object v1, v5

    move-object v3, v1

    goto/16 :goto_a

    .line 488
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 489
    sget-object p1, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string p2, "downloadFileFromS3|save path is empty."

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 495
    :cond_1
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 498
    :try_start_1
    const-string v7, "GET"

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 499
    const-string v7, "Connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {v3, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v7, "Authorization"

    const-string/jumbo v8, "signature"

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string/jumbo v7, "x-amz-date"

    const-string v8, "date"

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v3, v7, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string/jumbo p2, "x-amz-content-sha256"

    const-string v7, "UNSIGNED-PAYLOAD"

    invoke-virtual {v3, p2, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v7, 0xc8

    if-ne p2, v7, :cond_4

    .line 507
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 510
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result p1

    goto :goto_1

    .line 512
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    .line 514
    :goto_1
    sget-object v1, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "uploadFileToS3|fileRet = %s"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    invoke-static {v1, v2, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 516
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 p2, 0x400

    .line 518
    new-array p2, p2, [B
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 521
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_5

    .line 528
    :goto_2
    :try_start_4
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    .line 529
    invoke-virtual {p1, p2, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_3
    move-object v5, p1

    const/4 v4, 0x0

    goto/16 :goto_a

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_4

    :catch_2
    move-exception p2

    goto :goto_5

    :catch_3
    move-exception p2

    .line 523
    :try_start_5
    sget-object v1, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string v2, "c|download file failed. network is invalid."

    invoke-static {v1, v2, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v1, v5

    move-object v5, p1

    goto/16 :goto_a

    :catch_4
    move-exception p2

    move-object v1, v5

    :goto_3
    move-object v5, p1

    move-object p1, p2

    goto :goto_7

    :catch_5
    move-exception p2

    move-object v1, v5

    :goto_4
    move-object v5, p1

    move-object p1, p2

    goto/16 :goto_8

    :catch_6
    move-exception p2

    move-object v1, v5

    :goto_5
    move-object v5, p1

    move-object p1, p2

    goto/16 :goto_9

    .line 533
    :cond_4
    :try_start_6
    sget-object p1, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {p1, v2, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x194

    if-ne p2, v2, :cond_5

    .line 536
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 539
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    move-object v1, v5

    goto :goto_a

    :catch_7
    move-exception p1

    move-object v1, v5

    goto :goto_7

    :catch_8
    move-exception p1

    move-object v1, v5

    goto :goto_8

    :catch_9
    move-exception p1

    move-object v1, v5

    goto :goto_9

    :catch_a
    move-exception p1

    move-object v1, v5

    move-object v3, v1

    .line 550
    :goto_7
    sget-object p2, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "downloadFileFromS3|write file fail. path="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_a

    :catch_b
    move-exception p1

    move-object v1, v5

    move-object v3, v1

    .line 547
    :goto_8
    sget-object p2, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string v0, "downloadFileFromS3|download file failed. network is invalid."

    invoke-static {p2, v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_a

    :catch_c
    move-exception p1

    move-object v1, v5

    move-object v3, v1

    .line 544
    :goto_9
    sget-object p2, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 555
    :goto_a
    const-string p1, "downloadFileFromS3 exception"

    if-eqz v5, :cond_6

    .line 557
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    goto :goto_b

    :catch_d
    move-exception p2

    .line 559
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6
    :goto_b
    if-eqz v1, :cond_7

    .line 565
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    goto :goto_c

    :catch_e
    move-exception p2

    .line 567
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_7
    :goto_c
    if-eqz v3, :cond_8

    .line 572
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 574
    :cond_8
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->removeMapValue(J)V

    .line 575
    const-string p1, ""

    invoke-static {v4, p0, p1, p3, p4}, Lcom/gme/video/sdk/jni/GmeVideoHttpJni;->handleResponse(ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic lambda$httpPostRequest$4(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    .line 592
    const-string v4, "httpPostRequest"

    .line 0
    const-string v0, "httpPostRequest|connect failed. http response code ="

    .line 593
    const-string v5, ""

    const/4 v6, 0x0

    .line 598
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v9, 0x1388

    .line 601
    :try_start_1
    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v9, 0xea60

    .line 602
    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v9, 0x1

    .line 603
    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 604
    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 605
    invoke-virtual {v8, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 606
    const-string v10, "POST"

    invoke-virtual {v8, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 607
    const-string v10, "Connection"

    const-string v11, "Keep-Alive"

    invoke-virtual {v8, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 610
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V

    .line 611
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 614
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 615
    sget-object v12, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string v13, "httpPostRequest|rCode= %d, strUrl= %s"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    new-array v7, v15, [Ljava/lang/Object;

    aput-object v14, v7, v6

    aput-object v1, v7, v9

    invoke-static {v12, v13, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v7, 0xc8

    if-ne v11, v7, :cond_1

    .line 617
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 619
    :goto_0
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v7

    move-object v7, v5

    const/4 v5, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v16, v7

    goto/16 :goto_13

    :catch_0
    move-exception v0

    move-object/from16 v16, v7

    :goto_1
    move-object v7, v10

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v16, v7

    :goto_2
    move-object v7, v10

    goto/16 :goto_e

    .line 623
    :cond_1
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v12, v0, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v0, 0x6c

    move-object v7, v5

    const/16 v5, 0x6c

    const/16 v16, 0x0

    .line 626
    :goto_3
    :try_start_5
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string v11, "httpPostRequest|strUrl= %s, resp = %s"

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v1, v12, v6

    aput-object v7, v12, v9

    invoke-static {v0, v11, v12}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 638
    :try_start_6
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 640
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v4, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_4
    if-eqz v16, :cond_2

    .line 645
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v6, v0

    .line 647
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v4, v6}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_5
    if-eqz v8, :cond_3

    .line 651
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 653
    :cond_3
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->removeMapValue(J)V

    .line 654
    invoke-static {v5, v1, v7, v2, v3}, Lcom/gme/video/sdk/jni/GmeVideoHttpJni;->handleResponse(ILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_12

    :catchall_1
    move-exception v0

    move v6, v5

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v5, v7

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v5, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v7, v5

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v7, v10

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v7, v10

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v7, v5

    goto :goto_6

    :catch_8
    move-exception v0

    const/4 v7, 0x0

    goto :goto_9

    :catch_9
    move-exception v0

    const/4 v7, 0x0

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v7, v5

    const/4 v8, 0x0

    :goto_6
    const/4 v10, 0x0

    :goto_7
    const/16 v16, 0x0

    :goto_8
    move-object v5, v0

    goto/16 :goto_14

    :catch_a
    move-exception v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_9
    const/16 v16, 0x0

    :goto_a
    const/16 v6, 0x6b

    .line 633
    :try_start_8
    sget-object v9, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v9, v4, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 634
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v7, :cond_4

    .line 638
    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    move-object v7, v0

    .line 640
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v4, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_4
    :goto_b
    if-eqz v16, :cond_5

    .line 645
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    move-object v7, v0

    .line 647
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v4, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_5
    :goto_c
    if-eqz v8, :cond_8

    goto :goto_11

    :catch_d
    move-exception v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_d
    const/16 v16, 0x0

    :goto_e
    const/16 v6, 0x66

    .line 629
    :try_start_b
    sget-object v9, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string v10, "httpPostRequest|unknown error."

    invoke-static {v9, v10, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 630
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v7, :cond_6

    .line 638
    :try_start_c
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e

    goto :goto_f

    :catch_e
    move-exception v0

    move-object v7, v0

    .line 640
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v4, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6
    :goto_f
    if-eqz v16, :cond_7

    .line 645
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f

    goto :goto_10

    :catch_f
    move-exception v0

    move-object v7, v0

    .line 647
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v4, v7}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_7
    :goto_10
    if-eqz v8, :cond_8

    .line 651
    :goto_11
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 653
    :cond_8
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->removeMapValue(J)V

    .line 654
    invoke-static {v6, v1, v5, v2, v3}, Lcom/gme/video/sdk/jni/GmeVideoHttpJni;->handleResponse(ILjava/lang/String;Ljava/lang/String;J)V

    :goto_12
    return-void

    :catchall_5
    move-exception v0

    move-object v10, v7

    :goto_13
    move-object v7, v5

    goto :goto_8

    :goto_14
    if-eqz v10, :cond_9

    .line 638
    :try_start_e
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_10

    goto :goto_15

    :catch_10
    move-exception v0

    move-object v9, v0

    .line 640
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v4, v9}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    :goto_15
    if-eqz v16, :cond_a

    .line 645
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11

    goto :goto_16

    :catch_11
    move-exception v0

    move-object v9, v0

    .line 647
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v4, v9}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_a
    :goto_16
    if-eqz v8, :cond_b

    .line 651
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 653
    :cond_b
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->removeMapValue(J)V

    .line 654
    invoke-static {v6, v1, v7, v2, v3}, Lcom/gme/video/sdk/jni/GmeVideoHttpJni;->handleResponse(ILjava/lang/String;Ljava/lang/String;J)V

    .line 655
    throw v5
.end method

.method static synthetic lambda$uploadFileCos$0(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-wide/from16 v9, p3

    const-string/jumbo v3, "uploadFileToCos|Content-Length => "

    const-string/jumbo v4, "uploadFileCos|file size is invalid. path="

    .line 82
    invoke-static/range {p0 .. p0}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->openFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 83
    const-string v13, ""

    if-nez v5, :cond_0

    const/4 v1, 0x0

    const/16 v11, 0x66

    const/4 v12, 0x0

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    goto/16 :goto_f

    .line 88
    :cond_0
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 90
    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileInputStream;->available()I

    move-result v6

    const/4 v15, -0x1

    const/4 v7, 0x0

    if-gtz v6, :cond_1

    .line 92
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v12, v14

    const/4 v1, 0x0

    const/4 v11, -0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 99
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 103
    :try_start_2
    invoke-virtual {v8, v5, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    const/16 v4, 0x1388

    .line 106
    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v4, 0xea60

    .line 107
    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v4, 0x1

    .line 108
    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 109
    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 110
    invoke-virtual {v8, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 111
    const-string v11, "PUT"

    invoke-virtual {v8, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 112
    const-string v11, "Connection"

    const-string v12, "Keep-Alive"

    invoke-virtual {v8, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v11, "Authorization"

    const-string/jumbo v12, "signature"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v11, "content-type"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    const-string v12, "Content-Type"

    if-nez v11, :cond_2

    .line 117
    :try_start_3
    invoke-virtual {v8, v12, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_2
    const-string v0, "application/octet-stream"

    invoke-virtual {v8, v12, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_1
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v11}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    const/16 v0, 0x400

    .line 127
    :try_start_4
    new-array v0, v0, [B

    const-wide/16 v17, 0x0

    const/4 v3, 0x0

    .line 130
    :goto_2
    invoke-virtual {v14, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    if-eq v12, v15, :cond_5

    .line 131
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object v15

    invoke-virtual {v15, v9, v10}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->checkNeedCancel(J)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_4

    .line 134
    :cond_3
    invoke-virtual {v11, v0, v7, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v19, v8

    int-to-long v7, v12

    add-long v17, v17, v7

    add-int/2addr v3, v4

    const/16 v7, 0xa

    if-lt v3, v7, :cond_4

    const/4 v12, 0x1

    move-wide/from16 v3, v17

    move-wide/from16 v20, v5

    move-object/from16 v15, v19

    const/4 v12, 0x0

    move-wide/from16 v7, p3

    .line 138
    :try_start_5
    invoke-static/range {v3 .. v8}, Lcom/gme/video/sdk/jni/GmeVideoHttpJni;->onProcess(JJJ)V

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    move-wide/from16 v20, v5

    move-object/from16 v15, v19

    const/4 v12, 0x0

    .line 141
    :goto_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    move-object v8, v15

    move-wide/from16 v5, v20

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v15, -0x1

    goto :goto_2

    :cond_5
    :goto_4
    move-object v15, v8

    const/4 v12, 0x0

    .line 144
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "uploadFileCos|write complete, wait for response"

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->checkNeedCancel(J)Z

    move-result v3

    if-nez v3, :cond_8

    .line 147
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uploadFileCos|rCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_7

    .line 150
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 152
    :goto_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    .line 155
    :cond_6
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uploadFileCos|upload result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v16, v3

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    move-object v12, v14

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    move-object v12, v14

    goto/16 :goto_e

    .line 157
    :cond_7
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uploadFileCos|upload file failed. http response code ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uploadFileImpl|upload file failed. http response code ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    const/16 v1, 0x6a

    move-object v13, v0

    const/16 v12, 0x6a

    :cond_8
    const/16 v16, 0x0

    :goto_6
    move-object v1, v11

    move v11, v12

    move-object v12, v14

    goto/16 :goto_f

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v15, v8

    :goto_7
    move-object v12, v14

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v15, v8

    :goto_8
    move-object v12, v14

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v15, v8

    move-object v12, v14

    const/4 v11, 0x0

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v15, v8

    move-object v12, v14

    const/4 v11, 0x0

    goto :goto_d

    :catch_8
    move-exception v0

    move-object v12, v14

    const/4 v11, 0x0

    goto :goto_9

    :catch_9
    move-exception v0

    move-object v12, v14

    const/4 v11, 0x0

    goto :goto_c

    :catch_a
    move-exception v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_9
    const/4 v15, 0x0

    :goto_a
    const/16 v16, 0x0

    .line 168
    :goto_b
    sget-object v3, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uploadFileCos|upload file failed. io exception. path= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    move-object v1, v11

    const/16 v11, 0x66

    goto :goto_f

    :catch_b
    move-exception v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_c
    const/4 v15, 0x0

    :goto_d
    const/16 v16, 0x0

    .line 164
    :goto_e
    sget-object v1, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "uploadFileCos|upload file failed. network is invalid."

    invoke-static {v1, v3, v0}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 166
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const/16 v0, 0x6b

    move-object v1, v11

    const/16 v11, 0x6b

    .line 175
    :goto_f
    const-string/jumbo v3, "uploadFileCos exception"

    if-eqz v12, :cond_9

    .line 177
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    move-object v4, v0

    .line 179
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    :goto_10
    if-eqz v1, :cond_a

    .line 184
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    move-object v1, v0

    .line 186
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_a
    :goto_11
    if-eqz v16, :cond_b

    .line 192
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    move-object v1, v0

    .line 194
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_b
    :goto_12
    if-eqz v15, :cond_c

    .line 199
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 201
    :cond_c
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->removeMapValue(J)V

    .line 202
    invoke-static {v11, v2, v13, v9, v10}, Lcom/gme/video/sdk/jni/GmeVideoHttpJni;->handleResponse(ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic lambda$uploadFileToS3$1(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-wide/from16 v8, p3

    const-string/jumbo v2, "uploadFileToS3|Content-Length => "

    const-string/jumbo v3, "uploadFileToS3|file size is invalid. path="

    .line 225
    invoke-static/range {p0 .. p0}, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->openFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 226
    const-string v11, ""

    if-nez v4, :cond_0

    const/16 v0, 0x66

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x66

    :goto_0
    const/16 v17, 0x0

    goto/16 :goto_13

    :cond_0
    const/4 v12, -0x1

    .line 232
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c

    .line 234
    :try_start_1
    invoke-virtual {v13}, Ljava/io/FileInputStream;->available()I

    move-result v5

    const/4 v14, 0x0

    if-gtz v5, :cond_1

    .line 236
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v10, v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 243
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 248
    :try_start_2
    invoke-virtual {v15, v6, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    const/16 v3, 0x1388

    .line 251
    invoke-virtual {v15, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v3, 0xea60

    .line 252
    invoke-virtual {v15, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v4, 0x1

    .line 253
    invoke-virtual {v15, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 254
    invoke-virtual {v15, v14}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 255
    const-string v3, "PUT"

    invoke-virtual {v15, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 256
    const-string v3, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v15, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v3, "Content-Length"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v3, "Authorization"

    const-string/jumbo v5, "signature"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v3, "x-amz-date"

    const-string v5, "date"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v3, "x-amz-content-sha256"

    const-string v5, "UNSIGNED-PAYLOAD"

    invoke-virtual {v15, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v3, "content-type"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    const-string v5, "Content-Type"

    if-nez v3, :cond_2

    .line 264
    :try_start_3
    invoke-virtual {v15, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v10, v13

    move-object/from16 v17, v15

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v10, v13

    move-object/from16 v17, v15

    goto/16 :goto_c

    .line 266
    :cond_2
    :try_start_4
    const-string v0, "application/octet-stream"

    invoke-virtual {v15, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_1
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    const/16 v0, 0x400

    .line 275
    :try_start_5
    new-array v0, v0, [B

    const-wide/16 v2, 0x0

    const/16 v16, 0x0

    .line 278
    :goto_2
    invoke-virtual {v13, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-eq v10, v12, :cond_5

    .line 279
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->checkNeedCancel(J)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_4

    .line 282
    :cond_3
    invoke-virtual {v5, v0, v14, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 p0, v15

    int-to-long v14, v10

    add-long/2addr v14, v2

    add-int/lit8 v2, v16, 0x1

    const/16 v3, 0xa

    if-lt v2, v3, :cond_4

    move-wide v2, v14

    move-object v10, v5

    const/16 v16, 0x1

    move-wide v4, v6

    move-wide/from16 v18, v6

    move-wide/from16 v6, p3

    .line 288
    :try_start_6
    invoke-static/range {v2 .. v7}, Lcom/gme/video/sdk/jni/GmeVideoHttpJni;->onProcess(JJJ)V

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    move-object v10, v5

    move-wide/from16 v18, v6

    const/16 v16, 0x1

    .line 291
    :goto_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    move/from16 v16, v2

    move-object v5, v10

    move-wide v2, v14

    move-wide/from16 v6, v18

    const/4 v4, 0x1

    const/4 v12, -0x1

    const/4 v14, 0x0

    move-object/from16 v15, p0

    goto :goto_2

    :cond_5
    :goto_4
    move-object v10, v5

    move-object/from16 p0, v15

    .line 294
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "uploadFileToS3|write complete, wait for response"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->checkNeedCancel(J)Z

    move-result v2

    if-nez v2, :cond_8

    .line 297
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uploadFileToS3|rCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_7

    .line 300
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 302
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 305
    :cond_6
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uploadFileToS3|upload result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v17, v2

    const/4 v0, 0x0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v17, p0

    move-object v3, v0

    move-object v0, v10

    move-object v10, v13

    goto/16 :goto_f

    :catch_3
    move-exception v0

    move-object/from16 v17, p0

    move-object v3, v0

    move-object v0, v10

    move-object v10, v13

    goto/16 :goto_11

    .line 307
    :cond_7
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uploadFileToS3|upload file failed. http response code ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uploadFileImpl|upload file failed. http response code ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    const/16 v2, 0x6a

    move-object v11, v0

    const/16 v0, 0x6a

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_6
    const/16 v17, 0x0

    :goto_7
    move-object/from16 v3, p0

    move v12, v0

    move-object v2, v10

    move-object v10, v13

    goto/16 :goto_13

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v10, v5

    move-object/from16 p0, v15

    :goto_8
    move-object/from16 v17, p0

    move-object v3, v0

    move-object v0, v10

    move-object v10, v13

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v10, v5

    move-object/from16 p0, v15

    :goto_9
    move-object/from16 v17, p0

    move-object v3, v0

    move-object v0, v10

    move-object v10, v13

    goto :goto_d

    :catch_8
    move-exception v0

    move-object/from16 p0, v15

    move-object/from16 v17, p0

    move-object v3, v0

    move-object v10, v13

    :goto_a
    const/4 v0, 0x0

    :goto_b
    const/4 v2, 0x0

    goto :goto_f

    :catch_9
    move-exception v0

    move-object/from16 p0, v15

    move-object/from16 v17, p0

    move-object v3, v0

    move-object v10, v13

    :goto_c
    const/4 v0, 0x0

    :goto_d
    const/4 v2, 0x0

    goto :goto_11

    :catch_a
    move-exception v0

    move-object v3, v0

    move-object v10, v13

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_e

    :catch_b
    move-exception v0

    move-object v3, v0

    move-object v10, v13

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_10

    :catch_c
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_e
    const/16 v17, 0x0

    .line 317
    :goto_f
    sget-object v4, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uploadFileToS3|upload file failed. io exception. path="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 319
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    goto :goto_12

    :catch_d
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_10
    const/16 v17, 0x0

    .line 313
    :goto_11
    sget-object v4, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "uploadFileToS3|upload file failed. network is invalid."

    invoke-static {v4, v5, v3}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 315
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v11

    :goto_12
    move-object/from16 v3, v17

    const/4 v12, -0x1

    move-object/from16 v17, v2

    move-object v2, v0

    .line 324
    :goto_13
    const-string/jumbo v4, "uploadFileToS3 exception"

    if-eqz v10, :cond_9

    .line 326
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    move-object v5, v0

    .line 328
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    :goto_14
    if-eqz v2, :cond_a

    .line 333
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    goto :goto_15

    :catch_f
    move-exception v0

    move-object v2, v0

    .line 335
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_a
    :goto_15
    if-eqz v17, :cond_b

    .line 340
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    goto :goto_16

    :catch_10
    move-exception v0

    move-object v2, v0

    .line 342
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_b
    :goto_16
    if-eqz v3, :cond_c

    .line 347
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 350
    :cond_c
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->removeMapValue(J)V

    .line 351
    invoke-static {v12, v1, v11, v8, v9}, Lcom/gme/video/sdk/jni/GmeVideoHttpJni;->handleResponse(ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static openFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 53
    sget-object p0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    const-string v0, "openFile|filePath is empty."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 57
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 59
    :cond_2
    :goto_0
    sget-object v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "openFile|filePath is not exist or can not read, path="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/gme/video/sdk/impl/GmeVideoLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public downloadFileFromCos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 7

    .line 366
    new-instance p4, Ljava/lang/Thread;

    new-instance v6, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda2;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 464
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public downloadFileFromS3(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 476
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 577
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public httpGetRequest(Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public httpPostRequest(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 1

    .line 591
    new-instance p5, Ljava/lang/Thread;

    new-instance v0, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 657
    invoke-virtual {p5}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public uploadFileCos(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public uploadFileToS3(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/gme/video/sdk/net/GmeVideoHttpClient$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 353
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
