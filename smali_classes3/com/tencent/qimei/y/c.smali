.class public abstract Lcom/tencent/qimei/y/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
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
    const-string v6, "HEAD"

    invoke-static {p0, v6, v5}, Lcom/tencent/qimei/x/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 12
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "0"

    const/4 v3, 0x1

    goto :goto_0

    .line 15
    :cond_0
    :try_start_1
    const-string v5, "452"

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "https connect error: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "499"

    goto :goto_0

    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    new-array v0, v3, [Ljava/lang/Object;

    const-string v5, "NET"

    const-string v6, "no network permission,please add in AndroidManifest: <uses-permission android:name=\"android.permission.INTERNET\" /> "

    invoke-static {v5, v6, v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "security error: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "199"

    goto :goto_0

    :catch_1
    move-exception p0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "https connect timeout: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "451"

    :goto_0
    if-eqz v3, :cond_1

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 49
    new-instance v0, Lcom/tencent/qimei/x/d;

    invoke-direct {v0, v3, p0, v4, v5}, Lcom/tencent/qimei/x/d;-><init>(ZLjava/lang/String;J)V

    goto :goto_1

    .line 51
    :cond_1
    new-instance v1, Lcom/tencent/qimei/x/d;

    invoke-direct {v1, v3, v0, v4, p0}, Lcom/tencent/qimei/x/d;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    move-object v0, v1

    .line 52
    :goto_1
    invoke-static {v0}, Lcom/tencent/qimei/y/e;->a(Lcom/tencent/qimei/x/d;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
