.class public abstract Lcom/tencent/qimei/y/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static g(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 10
    .annotation runtime Lcom/tencent/qimei/p/b;
    .end annotation

    .line 1
    const-string v0, "response status code != 2XX. msg: "

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 8
    :try_start_0
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    const-string v6, "Content-Type"

    const-string v7, "application/octet-stream"

    invoke-virtual {v5, v6, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    if-lez p3, :cond_0

    .line 11
    const-string v7, "Range"

    const-string v8, "bytes=%d-%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p2, v9, v3

    aput-object p3, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, v7, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    const-string p2, "GET"

    invoke-static {p0, p2, v5}, Lcom/tencent/qimei/x/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 p2, 0xc8

    if-eq v4, p2, :cond_2

    const/16 p2, 0xce

    if-ne v4, p2, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    const-string p1, "452"

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 26
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/tencent/qimei/x/c;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 27
    const-string p1, "454"

    .line 28
    const-string/jumbo p0, "write file failed!"
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_4

    .line 31
    :cond_3
    :try_start_1
    const-string p1, "Content-Range"

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "0"

    const/4 v3, 0x1

    goto :goto_4

    :catchall_0
    move-exception p0

    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    const/4 v3, 0x1

    goto :goto_3

    :catchall_1
    move-exception p0

    .line 49
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "https connect error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "499"

    goto :goto_4

    :catch_2
    move-exception p0

    const/4 v6, 0x0

    .line 50
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "NET"

    const-string p3, "no network permission,please add in AndroidManifest: <uses-permission android:name=\"android.permission.INTERNET\" /> "

    invoke-static {p2, p3, p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "security error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "199"

    move v3, v6

    goto :goto_4

    :catch_3
    move-exception p0

    .line 56
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "https connect timeout: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "451"

    :goto_4
    if-eqz v3, :cond_4

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    .line 69
    new-instance p3, Lcom/tencent/qimei/x/d;

    invoke-direct {p3, v3, p0, p1, p2}, Lcom/tencent/qimei/x/d;-><init>(ZLjava/lang/String;J)V

    goto :goto_5

    .line 71
    :cond_4
    new-instance p3, Lcom/tencent/qimei/x/d;

    invoke-direct {p3, v3, p1, v4, p0}, Lcom/tencent/qimei/x/d;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    .line 72
    :goto_5
    invoke-static {p3}, Lcom/tencent/qimei/y/e;->a(Lcom/tencent/qimei/x/d;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
