.class public abstract Lcom/tencent/qimei/y/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tencent/qimei/x/d;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    const-string v1, "is"

    iget-boolean v2, p0, Lcom/tencent/qimei/x/d;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    const-string v1, "bd"

    iget-object v2, p0, Lcom/tencent/qimei/x/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "ic"

    iget-object v2, p0, Lcom/tencent/qimei/x/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v1, "rc"

    iget v2, p0, Lcom/tencent/qimei/x/d;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    const-string v1, "em"

    iget-object v2, p0, Lcom/tencent/qimei/x/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v1, "nct"

    iget-wide v2, p0, Lcom/tencent/qimei/x/d;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation runtime Lcom/tencent/qimei/p/b;
    .end annotation

    .line 1
    const-string p0, "UTF-8"

    sget-object v0, Lcom/tencent/qimei/v/a;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 5
    iget-object v0, v0, Lcom/tencent/qimei/av/a;->k:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-boolean v0, Lcom/tencent/qimei/ad/c;->a:Z

    if-eqz v0, :cond_1

    .line 8
    const-string v0, "https://test.snowflake.qq.com/ola/v2"

    goto :goto_0

    .line 10
    :cond_1
    const-string v0, "https://snowflake.qq.com/ola/v2"

    .line 11
    :goto_0
    const-string v1, "response status code != 2XX. msg: "

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 18
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 21
    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v6, 0x7530

    .line 22
    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v6, 0x2710

    .line 23
    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 24
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 26
    const-string v6, "Content-Type"

    const-string v7, "application/json"

    invoke-virtual {v0, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 34
    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 36
    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 37
    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 40
    new-instance v7, Ljava/io/OutputStreamWriter;

    .line 41
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v7, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    .line 45
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 46
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object p1

    new-instance v7, Lcom/tencent/qimei/x/b;

    invoke-direct {v7, v0}, Lcom/tencent/qimei/x/b;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-virtual {p1, v7}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    .line 47
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v7, 0xc8

    if-ne p1, v7, :cond_3

    .line 48
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v7, 0x400

    .line 50
    new-array v7, v7, [B

    .line 52
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 53
    :goto_1
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eq v8, v4, :cond_2

    .line 54
    invoke-virtual {v1, v7, v5, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    new-array v4, v6, [Ljava/io/Closeable;

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/tencent/qimei/ad/b;->a([Ljava/io/Closeable;)V

    .line 59
    new-array v1, v6, [Ljava/io/Closeable;

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/tencent/qimei/ad/b;->a([Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "0"

    const/4 v5, 0x1

    goto/16 :goto_6

    .line 60
    :cond_3
    :try_start_2
    const-string p0, "452"

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, v0

    move-object v0, p0

    move-object p0, v9

    goto :goto_6

    :catchall_0
    move-exception p0

    move v4, p1

    goto :goto_2

    :catch_0
    move-exception p0

    move v4, p1

    goto :goto_3

    :catch_1
    move-exception p0

    move v4, p1

    goto :goto_4

    :catchall_1
    move-exception p0

    .line 75
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https connect error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "499"

    goto :goto_5

    :catch_2
    move-exception p0

    .line 76
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    new-array p1, v5, [Ljava/lang/Object;

    const-string v0, "NET"

    const-string v1, "no network permission,please add in AndroidManifest: <uses-permission android:name=\"android.permission.INTERNET\" /> "

    invoke-static {v0, v1, p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "security error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "199"

    goto :goto_5

    :catch_3
    move-exception p0

    .line 82
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https connect timeout: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "451"

    :goto_5
    move p1, v4

    :goto_6
    if-eqz v5, :cond_4

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 95
    new-instance p1, Lcom/tencent/qimei/x/d;

    invoke-direct {p1, v5, p0, v0, v1}, Lcom/tencent/qimei/x/d;-><init>(ZLjava/lang/String;J)V

    goto :goto_7

    .line 97
    :cond_4
    new-instance v1, Lcom/tencent/qimei/x/d;

    invoke-direct {v1, v5, v0, p1, p0}, Lcom/tencent/qimei/x/d;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    move-object p1, v1

    .line 98
    :goto_7
    invoke-static {p1}, Lcom/tencent/qimei/y/e;->a(Lcom/tencent/qimei/x/d;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
