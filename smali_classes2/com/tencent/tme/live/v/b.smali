.class public Lcom/tencent/tme/live/v/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field public final b:Lorg/apache/http/protocol/HttpContext;

.field public final c:Lorg/apache/http/client/methods/HttpUriRequest;

.field public final d:Lcom/tencent/tme/live/v/k;

.field public e:I

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Z

.field public volatile h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/tencent/tme/live/v/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/v/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "client"

    invoke-static {p1, v0}, Lcom/tencent/tme/live/v/n;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p1, p0, Lcom/tencent/tme/live/v/b;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    const-string p1, "context"

    invoke-static {p2, p1}, Lcom/tencent/tme/live/v/n;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/protocol/HttpContext;

    iput-object p1, p0, Lcom/tencent/tme/live/v/b;->b:Lorg/apache/http/protocol/HttpContext;

    const-string p1, "request"

    invoke-static {p3, p1}, Lcom/tencent/tme/live/v/n;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p1, p0, Lcom/tencent/tme/live/v/b;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string p1, "responseHandler"

    invoke-static {p4, p1}, Lcom/tencent/tme/live/v/n;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/v/k;

    iput-object p1, p0, Lcom/tencent/tme/live/v/b;->d:Lcom/tencent/tme/live/v/k;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/v/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tme/live/v/b;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/v/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/tme/live/v/b;->g:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tme/live/v/b;->g:Z

    iget-object v1, p0, Lcom/tencent/tme/live/v/b;->d:Lcom/tencent/tme/live/v/k;

    invoke-interface {v1}, Lcom/tencent/tme/live/v/k;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :goto_0
    return v0
.end method

.method public final b()V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tme/live/v/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/v/b;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/tme/live/v/b;->d:Lcom/tencent/tme/live/v/k;

    instance-of v1, v0, Lcom/tencent/tme/live/v/i;

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/tencent/tme/live/v/b;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/tencent/tme/live/v/b;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/tencent/tme/live/v/b;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/v/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/tme/live/v/b;->d:Lcom/tencent/tme/live/v/k;

    invoke-interface {v1, v1, v0}, Lcom/tencent/tme/live/v/k;->a(Lcom/tencent/tme/live/v/k;Lorg/apache/http/HttpResponse;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/v/b;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/tencent/tme/live/v/b;->d:Lcom/tencent/tme/live/v/k;

    invoke-interface {v1, v0}, Lcom/tencent/tme/live/v/k;->a(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/v/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/tencent/tme/live/v/b;->d:Lcom/tencent/tme/live/v/k;

    invoke-interface {v1, v1, v0}, Lcom/tencent/tme/live/v/k;->b(Lcom/tencent/tme/live/v/k;Lorg/apache/http/HttpResponse;)V

    return-void

    :cond_4
    check-cast v0, Lcom/tencent/tme/live/v/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1
    throw v0

    .line 2
    :cond_5
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "No valid URI scheme was provided"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/tme/live/v/b;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/v/b;->b()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v2

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/v/b;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget v3, p0, Lcom/tencent/tme/live/v/b;->e:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/tencent/tme/live/v/b;->e:I

    iget-object v4, p0, Lcom/tencent/tme/live/v/b;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v3, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    goto :goto_1

    :catch_2
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NPE in HttpClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/tme/live/v/b;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tencent/tme/live/v/b;->e:I

    iget-object v4, p0, Lcom/tencent/tme/live/v/b;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v3, v2, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    move-object v6, v3

    move v3, v2

    move-object v2, v6

    goto :goto_1

    :catch_3
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnknownHostException exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/tencent/tme/live/v/b;->e:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/tencent/tme/live/v/b;->e:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/tencent/tme/live/v/b;->e:I

    iget-object v5, p0, Lcom/tencent/tme/live/v/b;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v3

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move-object v2, v3

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/tencent/tme/live/v/b;->d:Lcom/tencent/tme/live/v/k;

    iget v5, p0, Lcom/tencent/tme/live/v/b;->e:I

    invoke-interface {v4, v5}, Lcom/tencent/tme/live/v/k;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1
    :goto_2
    const-string v1, "AsyncHttpRequest"

    const-string v2, "Unhandled exception origin cause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    new-instance v2, Ljava/io/IOException;

    const-string v1, "Unhandled exception: "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_3
    throw v2
.end method

.method public run()V
    .locals 5

    invoke-virtual {p0}, Lcom/tencent/tme/live/v/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/tme/live/v/b;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/tencent/tme/live/v/b;->i:Z

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/v/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/v/b;->d:Lcom/tencent/tme/live/v/k;

    invoke-interface {v0}, Lcom/tencent/tme/live/v/k;->b()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/v/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/v/b;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/v/b;->a()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/tencent/tme/live/v/b;->d:Lcom/tencent/tme/live/v/k;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4, v0}, Lcom/tencent/tme/live/v/k;->a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    const-string v2, "AsyncHttpRequest"

    const-string v3, "makeRequestWithRetries returned error"

    .line 1
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/tme/live/v/b;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/tencent/tme/live/v/b;->d:Lcom/tencent/tme/live/v/k;

    invoke-interface {v0}, Lcom/tencent/tme/live/v/k;->a()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/v/b;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iput-boolean v1, p0, Lcom/tencent/tme/live/v/b;->h:Z

    return-void
.end method
