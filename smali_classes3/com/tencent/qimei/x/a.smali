.class public final Lcom/tencent/qimei/x/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/tencent/qimei/ay/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/ay/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/x/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qimei/x/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/qimei/x/a;->c:Lcom/tencent/qimei/ay/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/x/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qimei/x/a;->b:Ljava/lang/String;

    .line 2
    const-string v2, "response status code != 2XX. msg: "

    .line 5
    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 9
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 12
    const-string v7, "GET"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v7, 0x7530

    .line 13
    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v7, 0x2710

    .line 14
    invoke-virtual {v0, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 15
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 18
    const-string v7, "Content-Type"

    const-string v8, "application/json"

    invoke-virtual {v0, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v7, "If-Modified-Since"

    invoke-virtual {v0, v7, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 29
    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 30
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 32
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v7, 0xc8

    if-ne v1, v7, :cond_1

    .line 33
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v7, 0x400

    .line 35
    new-array v7, v7, [B

    .line 37
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 38
    :goto_0
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-eq v9, v6, :cond_0

    .line 39
    invoke-virtual {v2, v7, v5, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 41
    :cond_0
    const-string v6, "UTF-8"

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    new-array v7, v4, [Ljava/io/Closeable;

    aput-object v2, v7, v5

    invoke-static {v7}, Lcom/tencent/qimei/ad/b;->a([Ljava/io/Closeable;)V

    .line 44
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v8, v2, v5

    invoke-static {v2}, Lcom/tencent/qimei/ad/b;->a([Ljava/io/Closeable;)V

    .line 45
    const-string v2, "Last-Modified"

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "0"

    const/4 v2, 0x1

    goto/16 :goto_5

    .line 48
    :cond_1
    :try_start_2
    const-string v6, "452"

    .line 49
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    move-object v10, v6

    move-object v6, v0

    move-object v0, v10

    goto :goto_5

    :catchall_0
    move-exception v0

    move v6, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move v6, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move v6, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 63
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https connect error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "499"

    goto :goto_4

    :catch_2
    move-exception v0

    .line 64
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "NET"

    const-string v7, "no network permission,please add in AndroidManifest: <uses-permission android:name=\"android.permission.INTERNET\" /> "

    invoke-static {v2, v7, v1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "security error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "199"

    goto :goto_4

    :catch_3
    move-exception v0

    .line 70
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https connect timeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "451"

    :goto_4
    const/4 v2, 0x0

    move v10, v6

    move-object v6, v0

    move-object v0, v1

    move v1, v10

    :goto_5
    if-eqz v2, :cond_2

    .line 82
    new-instance v0, Lcom/tencent/qimei/x/d;

    const-wide/16 v7, 0x0

    .line 83
    invoke-direct {v0, v2, v6, v7, v8}, Lcom/tencent/qimei/x/d;-><init>(ZLjava/lang/String;J)V

    .line 84
    iput-object v3, v0, Lcom/tencent/qimei/x/d;->d:Ljava/lang/String;

    goto :goto_6

    .line 85
    :cond_2
    new-instance v3, Lcom/tencent/qimei/x/d;

    invoke-direct {v3, v2, v0, v1, v6}, Lcom/tencent/qimei/x/d;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    move-object v0, v3

    .line 86
    :goto_6
    iget-boolean v1, v0, Lcom/tencent/qimei/x/d;->a:Z

    const-string v2, "lc_fe_tm"

    const/4 v3, 0x2

    if-eqz v1, :cond_5

    .line 87
    iget-object v1, p0, Lcom/tencent/qimei/x/a;->c:Lcom/tencent/qimei/ay/c;

    iget-object v4, v0, Lcom/tencent/qimei/x/d;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/qimei/x/d;->d:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 88
    aget-object v0, v0, v5

    .line 90
    iget-object v5, v1, Lcom/tencent/qimei/ay/c;->c:Lcom/tencent/qimei/ay/d;

    .line 91
    iget-object v5, v5, Lcom/tencent/qimei/ay/d;->b:Ljava/lang/String;

    .line 92
    invoke-static {v5}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v5

    iget-object v6, v1, Lcom/tencent/qimei/ay/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v4}, Lcom/tencent/qimei/ay/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v4, v1, Lcom/tencent/qimei/ay/c;->c:Lcom/tencent/qimei/ay/d;

    iget-object v1, v1, Lcom/tencent/qimei/ay/c;->b:Ljava/lang/String;

    .line 97
    iget-object v5, v4, Lcom/tencent/qimei/ay/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 98
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 99
    iget-object v3, v4, Lcom/tencent/qimei/ay/d;->d:Lcom/tencent/qimei/ax/e;

    .line 100
    invoke-virtual {v3}, Lcom/tencent/qimei/ax/e;->a()V

    .line 101
    :cond_3
    iget-object v3, v4, Lcom/tencent/qimei/ay/d;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v3

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;J)V

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_8

    .line 108
    :cond_4
    invoke-static {v0}, Lcom/tencent/qimei/ad/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v2, v4, Lcom/tencent/qimei/ay/d;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 110
    :cond_5
    iget-object v1, p0, Lcom/tencent/qimei/x/a;->c:Lcom/tencent/qimei/ay/c;

    iget v0, v0, Lcom/tencent/qimei/x/d;->f:I

    .line 111
    iget-object v6, v1, Lcom/tencent/qimei/ay/c;->c:Lcom/tencent/qimei/ay/d;

    .line 112
    iget-object v1, v1, Lcom/tencent/qimei/ay/c;->b:Ljava/lang/String;

    .line 113
    iget-object v7, v6, Lcom/tencent/qimei/ay/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 114
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    if-ne v7, v3, :cond_6

    .line 115
    iget-object v3, v6, Lcom/tencent/qimei/ay/d;->d:Lcom/tencent/qimei/ax/e;

    .line 116
    invoke-virtual {v3}, Lcom/tencent/qimei/ax/e;->a()V

    .line 117
    :cond_6
    iget-object v3, v6, Lcom/tencent/qimei/ay/d;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v3

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v2, v7, v8}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;J)V

    const/4 v2, 0x0

    .line 120
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_7

    .line 124
    :cond_7
    invoke-static {v2}, Lcom/tencent/qimei/ad/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    iget-object v3, v6, Lcom/tencent/qimei/ay/d;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v5

    const-string v0, "HidTask"

    const-string v2, "pull content from server,code = %d"

    invoke-static {v0, v2, v1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    return-void
.end method
