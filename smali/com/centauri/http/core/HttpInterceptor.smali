.class Lcom/centauri/http/core/HttpInterceptor;
.super Ljava/lang/Object;
.source "HttpInterceptor.java"

# interfaces
.implements Lcom/centauri/http/core/Interceptor;


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_READ_TIMEOUT:I = 0x3a98

.field private static final MAX_VALID_RETRY_TIME:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HTTP"


# instance fields
.field private final httpHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/centauri/http/core/HttpHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final networkManager:Lcom/centauri/http/core/NetworkManager;


# direct methods
.method constructor <init>(Lcom/centauri/http/core/NetworkManager;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/centauri/http/core/HttpInterceptor;->httpHandlers:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/centauri/http/core/HttpInterceptor;->networkManager:Lcom/centauri/http/core/NetworkManager;

    return-void
.end method

.method private callAllHandlerOnRetry(IILcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/centauri/http/core/HttpInterceptor;->httpHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/core/HttpInterceptor;->httpHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/centauri/http/core/HttpHandler;

    .line 221
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/centauri/http/core/HttpHandler;->onHttpRetry(IILcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private callAllHandlerOnStart(Lcom/centauri/http/core/Request;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/centauri/http/core/HttpInterceptor;->httpHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/core/HttpInterceptor;->httpHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/centauri/http/core/HttpHandler;

    .line 186
    invoke-interface {v1, p1}, Lcom/centauri/http/core/HttpHandler;->onHttpStart(Lcom/centauri/http/core/Request;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private callAllHandlerOnStop(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/centauri/http/core/HttpInterceptor;->httpHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/core/HttpInterceptor;->httpHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/centauri/http/core/HttpInterceptor;->httpHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 203
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/centauri/http/core/HttpHandler;

    .line 205
    invoke-interface {v1, p1, p2}, Lcom/centauri/http/core/HttpHandler;->onHttpEnd(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 529
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 532
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 536
    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 537
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 540
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private getResponseFromHttp(Lcom/centauri/http/core/Request;Z)Lcom/centauri/http/core/Response;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 276
    const-string v3, ""

    const-string v4, " Is stop = "

    const-string v5, "Network response exception = "

    const-string v6, "Network response message = "

    const-string v7, "Network response code = "

    const-string v8, "Network response param = "

    const-string v9, "Network response url = "

    const-string v10, "HTTP"

    new-instance v11, Lcom/centauri/http/core/Response;

    invoke-direct {v11}, Lcom/centauri/http/core/Response;-><init>()V

    if-nez v2, :cond_0

    return-object v11

    .line 282
    :cond_0
    invoke-virtual {v11, v2}, Lcom/centauri/http/core/Response;->setRequest(Lcom/centauri/http/core/Request;)V

    .line 285
    invoke-direct/range {p0 .. p1}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnStart(Lcom/centauri/http/core/Request;)V

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v2, Lcom/centauri/http/core/Request;->currentTryTime:J

    const/16 v12, 0xc8

    const/4 v14, 0x0

    .line 310
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/centauri/http/core/Request;->resetGetOutputStreamTimeAndGetInputStreamTime()V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_37
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_36
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_34
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 312
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/centauri/http/core/Request;->getFullURLString()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_33
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_32
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_34
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 316
    :try_start_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_30
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2d
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    if-eqz v0, :cond_2

    .line 449
    invoke-direct {v1, v14, v14}, Lcom/centauri/http/core/HttpInterceptor;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 456
    iput-object v14, v2, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-wide v13, v2, Lcom/centauri/http/core/Request;->currentTryTime:J

    sub-long v13, v16, v13

    iput-wide v13, v2, Lcom/centauri/http/core/Request;->currentTryTimeConsume:J

    if-eqz p2, :cond_1

    .line 463
    iget v0, v11, Lcom/centauri/http/core/Response;->resultCode:I

    if-eq v0, v12, :cond_1

    const/4 v3, 0x1

    .line 464
    iput-boolean v3, v2, Lcom/centauri/http/core/Request;->isAllRetriesFailed:Z

    .line 470
    :cond_1
    invoke-direct {v1, v2, v11}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnStop(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {v10, v8}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/centauri/http/core/Response;->resultCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/centauri/http/core/Request;->isStopped()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    .line 320
    :cond_2
    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_30
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2d
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    if-nez v0, :cond_4

    .line 449
    invoke-direct {v1, v14, v14}, Lcom/centauri/http/core/HttpInterceptor;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 456
    iput-object v14, v2, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v16, v4

    iget-wide v3, v2, Lcom/centauri/http/core/Request;->currentTryTime:J

    sub-long/2addr v13, v3

    iput-wide v13, v2, Lcom/centauri/http/core/Request;->currentTryTimeConsume:J

    if-eqz p2, :cond_3

    .line 463
    iget v0, v11, Lcom/centauri/http/core/Response;->resultCode:I

    if-eq v0, v12, :cond_3

    const/4 v3, 0x1

    .line 464
    iput-boolean v3, v2, Lcom/centauri/http/core/Request;->isAllRetriesFailed:Z

    .line 470
    :cond_3
    invoke-direct {v1, v2, v11}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnStop(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {v10, v8}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/centauri/http/core/Response;->resultCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object v3, v11, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    goto :goto_0

    .line 328
    :cond_4
    :try_start_4
    instance-of v13, v0, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_30
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2d
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    if-nez v13, :cond_6

    .line 449
    invoke-direct {v1, v14, v14}, Lcom/centauri/http/core/HttpInterceptor;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 456
    iput-object v14, v2, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v16, v4

    iget-wide v3, v2, Lcom/centauri/http/core/Request;->currentTryTime:J

    sub-long/2addr v13, v3

    iput-wide v13, v2, Lcom/centauri/http/core/Request;->currentTryTimeConsume:J

    if-eqz p2, :cond_5

    .line 463
    iget v0, v11, Lcom/centauri/http/core/Response;->resultCode:I

    if-eq v0, v12, :cond_5

    const/4 v3, 0x1

    .line 464
    iput-boolean v3, v2, Lcom/centauri/http/core/Request;->isAllRetriesFailed:Z

    .line 470
    :cond_5
    invoke-direct {v1, v2, v11}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnStop(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {v10, v8}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/centauri/http/core/Response;->resultCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 332
    :cond_6
    :try_start_5
    move-object v13, v0

    check-cast v13, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_30
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2d
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 333
    :try_start_6
    iput-object v13, v2, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/4 v12, 0x0

    .line 336
    invoke-virtual {v13, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 339
    invoke-virtual {v13, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 342
    invoke-direct {v1, v13, v2}, Lcom/centauri/http/core/HttpInterceptor;->setHttpTimeout(Ljava/net/HttpURLConnection;Lcom/centauri/http/core/Request;)V

    .line 345
    invoke-static {v13, v2}, Lcom/centauri/http/core/HttpInterceptor;->trySetCustomHttpsVerify(Ljava/net/HttpURLConnection;Lcom/centauri/http/core/Request;)V

    .line 348
    invoke-direct {v1, v13, v2}, Lcom/centauri/http/core/HttpInterceptor;->setHeaders(Ljava/net/HttpURLConnection;Lcom/centauri/http/core/Request;)V

    const/4 v12, 0x1

    .line 351
    invoke-virtual {v13, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 353
    invoke-virtual/range {p1 .. p1}, Lcom/centauri/http/core/Request;->constructAllParams()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/centauri/http/core/Request;->isPostRequest()Z

    move-result v0
    :try_end_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_2c
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_29
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    const-string v12, "UTF-8"

    if-eqz v0, :cond_b

    .line 357
    :try_start_7
    const-string v0, "POST"

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v14, 0x1

    .line 358
    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/centauri/http/core/Request;->hasParameters()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 362
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 363
    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 364
    array-length v14, v0

    move-object/from16 v19, v12

    .line 365
    const-string v12, "Content-Length"

    move-object/from16 v20, v0

    .line 366
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {v13, v12, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/centauri/http/core/Request;->isStopped()Z

    move-result v0
    :try_end_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_9

    const/4 v12, 0x0

    .line 449
    invoke-direct {v1, v12, v12}, Lcom/centauri/http/core/HttpInterceptor;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v13, :cond_7

    .line 454
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 456
    :cond_7
    iput-object v12, v2, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v23, v4

    move-object v14, v5

    iget-wide v4, v2, Lcom/centauri/http/core/Request;->currentTryTime:J

    sub-long/2addr v12, v4

    iput-wide v12, v2, Lcom/centauri/http/core/Request;->currentTryTimeConsume:J

    if-eqz p2, :cond_8

    .line 463
    iget v0, v11, Lcom/centauri/http/core/Response;->resultCode:I

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_8

    const/4 v4, 0x1

    .line 464
    iput-boolean v4, v2, Lcom/centauri/http/core/Request;->isAllRetriesFailed:Z

    .line 470
    :cond_8
    invoke-direct {v1, v2, v11}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnStop(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/centauri/http/core/Response;->resultCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v4, v14

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_9
    move-object/from16 v25, v5

    move-object v5, v4

    move-object/from16 v4, v25

    .line 381
    :try_start_8
    new-instance v0, Ljava/io/DataOutputStream;

    .line 382
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v12, v20

    .line 383
    invoke-virtual {v0, v12}, Ljava/io/DataOutputStream;->write([B)V

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23
    :try_end_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v14, v4

    move-object v12, v5

    sub-long v4, v23, v21

    :try_start_9
    iput-wide v4, v2, Lcom/centauri/http/core/Request;->currentGetOutputStreamTime:J

    .line 385
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 388
    :try_start_a
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 390
    :try_start_b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    move-object v14, v4

    move-object v12, v5

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v14, v4

    move-object v12, v5

    move-object v5, v7

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v14, v4

    move-object v12, v5

    goto/16 :goto_b

    :catch_3
    move-exception v0

    move-object v14, v4

    move-object v12, v5

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v14, v4

    move-object v12, v5

    goto :goto_9

    :cond_a
    move-object v14, v5

    move-object/from16 v19, v12

    move-object v12, v4

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    move-object v12, v4

    move-object v14, v5

    :goto_3
    move-object v5, v6

    move-object v4, v7

    move-object v6, v14

    const/4 v14, 0x0

    move-object v7, v3

    move-object v3, v15

    :goto_4
    const/4 v15, 0x0

    goto/16 :goto_39

    :catch_5
    move-exception v0

    move-object v12, v4

    move-object v14, v5

    :goto_5
    move-object v5, v7

    move-object v4, v14

    :goto_6
    const/4 v14, 0x0

    move-object v7, v3

    move-object v3, v15

    goto/16 :goto_2e

    :catch_6
    move-exception v0

    move-object v12, v4

    move-object v14, v5

    move-object v4, v7

    :goto_7
    const/4 v14, 0x0

    move-object v7, v3

    move-object v3, v15

    goto/16 :goto_31

    :catch_7
    move-exception v0

    move-object v12, v4

    move-object v14, v5

    :goto_8
    move-object v5, v6

    move-object v4, v7

    move-object v6, v14

    const/4 v14, 0x0

    move-object v7, v3

    move-object v3, v15

    goto/16 :goto_35

    :catch_8
    move-exception v0

    move-object v12, v4

    move-object v14, v5

    :goto_9
    move-object v5, v6

    move-object v4, v7

    move-object v6, v14

    const/4 v14, 0x0

    move-object v7, v3

    move-object v3, v15

    :goto_a
    move-object v15, v13

    const/4 v13, 0x0

    goto/16 :goto_37

    :cond_b
    move-object v14, v5

    move-object/from16 v19, v12

    move-object v12, v4

    .line 394
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lcom/centauri/http/core/Request;->isGetRequest()Z

    move-result v0
    :try_end_c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_27
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_25
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    if-eqz v0, :cond_c

    .line 396
    :try_start_d
    const-string v0, "GET"

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    :goto_b
    move-object v4, v7

    move-object v5, v14

    goto :goto_7

    :catch_b
    move-exception v0

    goto :goto_8

    :catch_c
    move-exception v0

    goto :goto_9

    .line 399
    :cond_c
    :goto_c
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcom/centauri/http/core/Request;->isStopped()Z

    move-result v0
    :try_end_e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_e .. :try_end_e} :catch_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_27
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_25
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz v0, :cond_f

    const/4 v4, 0x0

    .line 449
    invoke-direct {v1, v4, v4}, Lcom/centauri/http/core/HttpInterceptor;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v13, :cond_d

    .line 454
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 456
    :cond_d
    iput-object v4, v2, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v18, v14

    iget-wide v13, v2, Lcom/centauri/http/core/Request;->currentTryTime:J

    sub-long/2addr v4, v13

    iput-wide v4, v2, Lcom/centauri/http/core/Request;->currentTryTimeConsume:J

    if-eqz p2, :cond_e

    .line 463
    iget v0, v11, Lcom/centauri/http/core/Response;->resultCode:I

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_e

    const/4 v4, 0x1

    .line 464
    iput-boolean v4, v2, Lcom/centauri/http/core/Request;->isAllRetriesFailed:Z

    .line 470
    :cond_e
    invoke-direct {v1, v2, v11}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnStop(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/centauri/http/core/Response;->resultCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_d
    iget-object v3, v11, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_f
    move-object v4, v14

    .line 402
    :try_start_f
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 404
    iput v0, v11, Lcom/centauri/http/core/Response;->resultCode:I
    :try_end_f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f .. :try_end_f} :catch_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_23
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_22
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_21
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_14

    .line 408
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/centauri/http/core/Request;->isStopped()Z

    move-result v0
    :try_end_10
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_10 .. :try_end_10} :catch_20
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_1f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1d
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v0, :cond_12

    const/4 v5, 0x0

    .line 449
    invoke-direct {v1, v5, v5}, Lcom/centauri/http/core/HttpInterceptor;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v13, :cond_10

    .line 454
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 456
    :cond_10
    iput-object v5, v2, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v22, v4

    iget-wide v4, v2, Lcom/centauri/http/core/Request;->currentTryTime:J

    sub-long/2addr v13, v4

    iput-wide v13, v2, Lcom/centauri/http/core/Request;->currentTryTimeConsume:J

    if-eqz p2, :cond_11

    .line 463
    iget v0, v11, Lcom/centauri/http/core/Response;->resultCode:I

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_11

    const/4 v4, 0x1

    .line 464
    iput-boolean v4, v2, Lcom/centauri/http/core/Request;->isAllRetriesFailed:Z

    .line 470
    :cond_11
    invoke-direct {v1, v2, v11}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnStop(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/centauri/http/core/Response;->resultCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v4, v22

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 416
    :cond_12
    :try_start_11
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_11
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_11 .. :try_end_11} :catch_20
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_1f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1d
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 417
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22
    :try_end_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_12 .. :try_end_12} :catch_1c
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_19
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object/from16 v24, v6

    move-object v14, v7

    sub-long v6, v22, v20

    :try_start_13
    iput-wide v6, v2, Lcom/centauri/http/core/Request;->currentGetInputStreamTime:J

    .line 419
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_13
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_13 .. :try_end_13} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_15
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    const/16 v0, 0x400

    .line 422
    :try_start_14
    new-array v0, v0, [B

    .line 424
    :goto_e
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7
    :try_end_14
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_14 .. :try_end_14} :catch_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_13
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_12
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-lez v7, :cond_13

    move-object/from16 v20, v5

    const/4 v5, 0x0

    .line 425
    :try_start_15
    invoke-virtual {v6, v0, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object/from16 v5, v20

    goto :goto_e

    :cond_13
    move-object/from16 v20, v5

    .line 428
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 431
    new-instance v5, Ljava/lang/String;

    move-object/from16 v7, v19

    invoke-direct {v5, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, v11, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;
    :try_end_15
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_15 .. :try_end_15} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-object/from16 v0, v20

    goto/16 :goto_17

    :catchall_3
    move-exception v0

    goto :goto_f

    :catch_d
    move-exception v0

    goto :goto_10

    :catch_e
    move-exception v0

    goto :goto_11

    :catch_f
    move-exception v0

    goto :goto_12

    :catch_10
    move-exception v0

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object/from16 v20, v5

    :goto_f
    move-object v7, v3

    move-object v3, v15

    move-object/from16 v5, v24

    move-object v15, v6

    move-object v6, v4

    move-object v4, v14

    move-object/from16 v14, v20

    goto/16 :goto_39

    :catch_11
    move-exception v0

    move-object/from16 v20, v5

    :goto_10
    move-object v7, v3

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v14, v20

    move-object v15, v6

    move-object/from16 v6, v24

    goto/16 :goto_2f

    :catch_12
    move-exception v0

    move-object/from16 v20, v5

    :goto_11
    move-object v7, v3

    move-object v5, v4

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v14, v20

    move-object v15, v6

    move-object/from16 v6, v24

    goto/16 :goto_32

    :catch_13
    move-exception v0

    move-object/from16 v20, v5

    :goto_12
    move-object v7, v3

    move-object v3, v15

    move-object/from16 v5, v24

    move-object v15, v6

    move-object v6, v4

    move-object v4, v14

    move-object/from16 v14, v20

    goto/16 :goto_36

    :catch_14
    move-exception v0

    move-object/from16 v20, v5

    :goto_13
    move-object v7, v3

    move-object v3, v15

    move-object/from16 v5, v24

    move-object v15, v13

    move-object/from16 v13, v20

    move-object/from16 v25, v6

    move-object v6, v4

    move-object v4, v14

    move-object/from16 v14, v25

    goto/16 :goto_37

    :catchall_5
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_14

    :catch_15
    move-exception v0

    move-object/from16 v20, v5

    move-object v7, v3

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v14, v20

    move-object/from16 v6, v24

    goto/16 :goto_2e

    :catch_16
    move-exception v0

    move-object/from16 v20, v5

    move-object v7, v3

    move-object v5, v4

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v14, v20

    move-object/from16 v6, v24

    goto/16 :goto_31

    :catch_17
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_15

    :catch_18
    move-exception v0

    move-object/from16 v20, v5

    goto/16 :goto_16

    :catchall_6
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v24, v6

    move-object v14, v7

    :goto_14
    move-object v7, v3

    move-object v6, v4

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v14, v20

    move-object/from16 v5, v24

    goto/16 :goto_4

    :catch_19
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v24, v6

    move-object v14, v7

    move-object v7, v3

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v14, v20

    goto/16 :goto_2e

    :catch_1a
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v24, v6

    move-object v14, v7

    move-object v7, v3

    move-object v5, v4

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v14, v20

    goto/16 :goto_31

    :catch_1b
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v24, v6

    move-object v14, v7

    :goto_15
    move-object v7, v3

    move-object v6, v4

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v14, v20

    move-object/from16 v5, v24

    goto/16 :goto_35

    :catch_1c
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v24, v6

    move-object v14, v7

    :goto_16
    move-object v7, v3

    move-object v6, v4

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v5, v24

    const/4 v14, 0x0

    move-object v15, v13

    move-object/from16 v13, v20

    goto/16 :goto_37

    :catchall_7
    move-exception v0

    move-object/from16 v24, v6

    move-object v14, v7

    move-object v7, v3

    move-object v6, v4

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v5, v24

    const/4 v14, 0x0

    goto/16 :goto_4

    :catch_1d
    move-exception v0

    move-object/from16 v24, v6

    move-object v14, v7

    move-object v7, v3

    move-object v5, v14

    goto/16 :goto_1c

    :catch_1e
    move-exception v0

    move-object/from16 v24, v6

    move-object v14, v7

    move-object v7, v3

    move-object v5, v4

    move-object v4, v14

    move-object v3, v15

    goto/16 :goto_30

    :catch_1f
    move-exception v0

    move-object/from16 v24, v6

    move-object v14, v7

    move-object v7, v3

    move-object v6, v4

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v5, v24

    goto/16 :goto_34

    :catch_20
    move-exception v0

    move-object/from16 v24, v6

    move-object v14, v7

    move-object v7, v3

    move-object v6, v4

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v5, v24

    const/4 v14, 0x0

    goto/16 :goto_a

    :cond_14
    move-object/from16 v24, v6

    move-object v14, v7

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 449
    :goto_17
    invoke-direct {v1, v0, v6}, Lcom/centauri/http/core/HttpInterceptor;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v13, :cond_15

    .line 454
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15
    const/4 v5, 0x0

    .line 456
    iput-object v5, v2, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v7, v14

    iget-wide v13, v2, Lcom/centauri/http/core/Request;->currentTryTime:J

    sub-long/2addr v5, v13

    iput-wide v5, v2, Lcom/centauri/http/core/Request;->currentTryTimeConsume:J

    if-eqz p2, :cond_16

    .line 463
    iget v0, v11, Lcom/centauri/http/core/Response;->resultCode:I

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_16

    const/4 v5, 0x1

    .line 464
    iput-boolean v5, v2, Lcom/centauri/http/core/Request;->isAllRetriesFailed:Z

    .line 470
    :cond_16
    invoke-direct {v1, v2, v11}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnStop(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v5, v7

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/centauri/http/core/Response;->resultCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v6, v24

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    :catchall_8
    move-exception v0

    goto :goto_18

    :catch_21
    move-exception v0

    goto :goto_1a

    :catch_22
    move-exception v0

    goto :goto_1d

    :catch_23
    move-exception v0

    goto :goto_1f

    :catch_24
    move-exception v0

    goto/16 :goto_21

    :catchall_9
    move-exception v0

    move-object v5, v7

    move-object v4, v14

    goto :goto_19

    :catch_25
    move-exception v0

    move-object v5, v7

    move-object v4, v14

    goto :goto_1b

    :catch_26
    move-exception v0

    move-object v5, v7

    move-object v4, v14

    goto :goto_1e

    :catch_27
    move-exception v0

    move-object v5, v7

    move-object v4, v14

    goto :goto_20

    :catch_28
    move-exception v0

    move-object v5, v7

    move-object v4, v14

    goto :goto_22

    :catchall_a
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    :goto_18
    move-object v5, v7

    :goto_19
    move-object v7, v3

    move-object v3, v15

    goto/16 :goto_2a

    :catch_29
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    :goto_1a
    move-object v5, v7

    :goto_1b
    move-object v7, v3

    :goto_1c
    move-object v3, v15

    goto/16 :goto_2d

    :catch_2a
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    :goto_1d
    move-object v5, v7

    :goto_1e
    move-object v7, v3

    move-object v3, v15

    goto/16 :goto_24

    :catch_2b
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    :goto_1f
    move-object v5, v7

    :goto_20
    move-object v7, v3

    move-object v3, v15

    goto/16 :goto_26

    :catch_2c
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    :goto_21
    move-object v5, v7

    :goto_22
    move-object v7, v3

    move-object v3, v15

    const/4 v14, 0x0

    move-object v15, v13

    const/4 v13, 0x0

    goto/16 :goto_28

    :catchall_b
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v3

    move-object v3, v15

    goto/16 :goto_29

    :catch_2d
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v3

    move-object v3, v15

    goto/16 :goto_2c

    :catch_2e
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v3

    move-object v3, v15

    goto :goto_23

    :catch_2f
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v3

    move-object v3, v15

    goto :goto_25

    :catch_30
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v3

    move-object v3, v15

    goto :goto_27

    :catch_31
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v3

    :goto_23
    const/4 v13, 0x0

    :goto_24
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v25, v5

    move-object v5, v4

    move-object/from16 v4, v25

    goto/16 :goto_32

    :catch_32
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v3

    :goto_25
    const/4 v13, 0x0

    :goto_26
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v25, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v25

    goto/16 :goto_36

    :catch_33
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v3

    :goto_27
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_28
    move-object/from16 v25, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v25

    goto/16 :goto_37

    :catchall_c
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v3

    :goto_29
    const/4 v13, 0x0

    :goto_2a
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v25, v6

    move-object v6, v4

    move-object v4, v5

    :goto_2b
    move-object/from16 v5, v25

    goto/16 :goto_39

    :catch_34
    move-exception v0

    move-object v12, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v3

    :goto_2c
    const/4 v13, 0x0

    :goto_2d
    const/4 v14, 0x0

    :goto_2e
    const/4 v15, 0x0

    .line 446
    :goto_2f
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    iput-object v0, v11, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 449
    invoke-direct {v1, v14, v15}, Lcom/centauri/http/core/HttpInterceptor;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v13, :cond_17

    .line 454
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17
    const/4 v13, 0x0

    .line 456
    iput-object v13, v2, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v22, v4

    move-object/from16 v17, v5

    iget-wide v4, v2, Lcom/centauri/http/core/Request;->currentTryTime:J

    sub-long/2addr v13, v4

    iput-wide v13, v2, Lcom/centauri/http/core/Request;->currentTryTimeConsume:J

    if-eqz p2, :cond_18

    .line 463
    iget v0, v11, Lcom/centauri/http/core/Response;->resultCode:I

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_18

    const/4 v4, 0x1

    .line 464
    iput-boolean v4, v2, Lcom/centauri/http/core/Request;->isAllRetriesFailed:Z

    .line 470
    :cond_18
    invoke-direct {v1, v2, v11}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnStop(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/centauri/http/core/Response;->resultCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    :catchall_d
    move-exception v0

    move-object/from16 v25, v5

    move-object v5, v4

    move-object/from16 v4, v25

    goto/16 :goto_33

    :catch_35
    move-exception v0

    move-object v12, v4

    move-object v4, v7

    move-object v7, v3

    const/4 v13, 0x0

    :goto_30
    const/4 v14, 0x0

    :goto_31
    const/4 v15, 0x0

    .line 442
    :goto_32
    :try_start_17
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 443
    iput-object v0, v11, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    .line 449
    invoke-direct {v1, v14, v15}, Lcom/centauri/http/core/HttpInterceptor;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v13, :cond_19

    .line 454
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_19
    const/4 v13, 0x0

    .line 456
    iput-object v13, v2, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v22, v5

    move-object/from16 v24, v6

    iget-wide v5, v2, Lcom/centauri/http/core/Request;->currentTryTime:J

    sub-long/2addr v13, v5

    iput-wide v13, v2, Lcom/centauri/http/core/Request;->currentTryTimeConsume:J

    if-eqz p2, :cond_1a

    .line 463
    iget v0, v11, Lcom/centauri/http/core/Response;->resultCode:I

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_1a

    const/4 v5, 0x1

    .line 464
    iput-boolean v5, v2, Lcom/centauri/http/core/Request;->isAllRetriesFailed:Z

    .line 470
    :cond_1a
    invoke-direct {v1, v2, v11}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnStop(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/centauri/http/core/Response;->resultCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v5, v24

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v6, v22

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    :catchall_e
    move-exception v0

    :goto_33
    move-object/from16 v25, v6

    move-object v6, v5

    goto/16 :goto_2b

    :catch_36
    move-exception v0

    move-object v12, v4

    move-object v4, v7

    move-object/from16 v25, v6

    move-object v6, v5

    move-object/from16 v5, v25

    move-object v7, v3

    const/4 v13, 0x0

    :goto_34
    const/4 v14, 0x0

    :goto_35
    const/4 v15, 0x0

    .line 439
    :goto_36
    :try_start_18
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 440
    iput-object v0, v11, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    .line 449
    invoke-direct {v1, v14, v15}, Lcom/centauri/http/core/HttpInterceptor;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v13, :cond_1b

    .line 454
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1b
    const/4 v13, 0x0

    .line 456
    iput-object v13, v2, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v24, v5

    move-object/from16 v22, v6

    iget-wide v5, v2, Lcom/centauri/http/core/Request;->currentTryTime:J

    sub-long/2addr v13, v5

    iput-wide v13, v2, Lcom/centauri/http/core/Request;->currentTryTimeConsume:J

    if-eqz p2, :cond_1c

    .line 463
    iget v0, v11, Lcom/centauri/http/core/Response;->resultCode:I

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_1c

    const/4 v5, 0x1

    .line 464
    iput-boolean v5, v2, Lcom/centauri/http/core/Request;->isAllRetriesFailed:Z

    .line 470
    :cond_1c
    invoke-direct {v1, v2, v11}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnStop(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/centauri/http/core/Response;->resultCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v5, v24

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v6, v22

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    :catchall_f
    move-exception v0

    goto/16 :goto_39

    :catch_37
    move-exception v0

    move-object v12, v4

    move-object v4, v7

    move-object/from16 v25, v6

    move-object v6, v5

    move-object/from16 v5, v25

    move-object v7, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 435
    :goto_37
    :try_start_19
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 436
    iput-object v0, v11, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    .line 449
    invoke-direct {v1, v13, v14}, Lcom/centauri/http/core/HttpInterceptor;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v15, :cond_1d

    .line 454
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1d
    const/4 v13, 0x0

    .line 456
    iput-object v13, v2, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v24, v5

    move-object/from16 v22, v6

    iget-wide v5, v2, Lcom/centauri/http/core/Request;->currentTryTime:J

    sub-long/2addr v13, v5

    iput-wide v13, v2, Lcom/centauri/http/core/Request;->currentTryTimeConsume:J

    if-eqz p2, :cond_1e

    .line 463
    iget v0, v11, Lcom/centauri/http/core/Response;->resultCode:I

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_1e

    const/4 v5, 0x1

    .line 464
    iput-boolean v5, v2, Lcom/centauri/http/core/Request;->isAllRetriesFailed:Z

    .line 470
    :cond_1e
    invoke-direct {v1, v2, v11}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnStop(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/centauri/http/core/Response;->resultCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v5, v24

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v6, v22

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_38
    iget-object v3, v11, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual/range {p1 .. p1}, Lcom/centauri/http/core/Request;->isStopped()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :catchall_10
    move-exception v0

    move-object/from16 v25, v14

    move-object v14, v13

    move-object v13, v15

    move-object/from16 v15, v25

    .line 449
    :goto_39
    invoke-direct {v1, v14, v15}, Lcom/centauri/http/core/HttpInterceptor;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v13, :cond_1f

    .line 454
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1f
    const/4 v13, 0x0

    .line 456
    iput-object v13, v2, Lcom/centauri/http/core/Request;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v24, v5

    move-object/from16 v18, v6

    iget-wide v5, v2, Lcom/centauri/http/core/Request;->currentTryTime:J

    sub-long/2addr v13, v5

    iput-wide v13, v2, Lcom/centauri/http/core/Request;->currentTryTimeConsume:J

    if-eqz p2, :cond_20

    .line 463
    iget v5, v11, Lcom/centauri/http/core/Response;->resultCode:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_20

    const/4 v5, 0x1

    .line 464
    iput-boolean v5, v2, Lcom/centauri/http/core/Request;->isAllRetriesFailed:Z

    .line 470
    :cond_20
    invoke-direct {v1, v2, v11}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnStop(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    .line 472
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v11, Lcom/centauri/http/core/Response;->resultCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v24

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/centauri/http/core/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/centauri/http/core/Response;->exception:Ljava/lang/Exception;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual/range {p1 .. p1}, Lcom/centauri/http/core/Request;->isStopped()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-static {v10, v2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    throw v0
.end method

.method private getResponseFromHttpWithRetry(Lcom/centauri/http/core/Request;)Lcom/centauri/http/core/Response;
    .locals 7

    .line 76
    new-instance v0, Lcom/centauri/http/core/Response;

    invoke-direct {v0}, Lcom/centauri/http/core/Response;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {v0, p1}, Lcom/centauri/http/core/Response;->setRequest(Lcom/centauri/http/core/Request;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/centauri/http/core/Request;->startTime:J

    .line 92
    iget-object v0, p0, Lcom/centauri/http/core/HttpInterceptor;->networkManager:Lcom/centauri/http/core/NetworkManager;

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v0}, Lcom/centauri/http/core/NetworkManager;->getDefaultMaxRetryTimes()I

    move-result v0

    if-le v0, v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 104
    :goto_0
    iget v3, p1, Lcom/centauri/http/core/Request;->maxRetryTime:I

    if-le v3, v1, :cond_3

    goto :goto_1

    :cond_3
    if-ltz v3, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    const/4 v0, 0x1

    if-gtz v1, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 113
    :goto_2
    invoke-direct {p0, p1, v3}, Lcom/centauri/http/core/HttpInterceptor;->getResponseFromHttp(Lcom/centauri/http/core/Request;Z)Lcom/centauri/http/core/Response;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 116
    invoke-virtual {v3}, Lcom/centauri/http/core/Response;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_6

    return-object v3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_9

    add-int/lit8 v5, v4, 0x1

    .line 125
    iput v5, p1, Lcom/centauri/http/core/Request;->retryTimes:I

    .line 129
    iget v6, p1, Lcom/centauri/http/core/Request;->retryTimes:I

    invoke-direct {p0, v6, v1, p1, v3}, Lcom/centauri/http/core/HttpInterceptor;->callAllHandlerOnRetry(IILcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)V

    add-int/lit8 v3, v1, -0x1

    if-ne v4, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    .line 132
    :goto_4
    invoke-direct {p0, p1, v3}, Lcom/centauri/http/core/HttpInterceptor;->getResponseFromHttp(Lcom/centauri/http/core/Request;Z)Lcom/centauri/http/core/Response;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 133
    invoke-virtual {v3}, Lcom/centauri/http/core/Response;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_8

    return-object v3

    :cond_8
    move v4, v5

    goto :goto_3

    :cond_9
    return-object v3
.end method

.method private setHeaders(Ljava/net/HttpURLConnection;Lcom/centauri/http/core/Request;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p2}, Lcom/centauri/http/core/Request;->getHttpHeaders()Ljava/util/HashMap;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 163
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    .line 167
    :cond_2
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 171
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setHttpTimeout(Ljava/net/HttpURLConnection;Lcom/centauri/http/core/Request;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/centauri/http/core/HttpInterceptor;->networkManager:Lcom/centauri/http/core/NetworkManager;

    const/16 v1, 0x3a98

    if-eqz v0, :cond_1

    .line 497
    iget v0, v0, Lcom/centauri/http/core/NetworkManager;->defaultConnectTimeout:I

    .line 498
    iget-object v2, p0, Lcom/centauri/http/core/HttpInterceptor;->networkManager:Lcom/centauri/http/core/NetworkManager;

    iget v2, v2, Lcom/centauri/http/core/NetworkManager;->defaultReadTimeout:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a98

    const/16 v2, 0x3a98

    :goto_0
    if-eqz p2, :cond_2

    .line 501
    iget v3, p2, Lcom/centauri/http/core/Request;->connectTimeout:I

    if-lez v3, :cond_2

    .line 502
    iget v0, p2, Lcom/centauri/http/core/Request;->connectTimeout:I

    :cond_2
    if-eqz p2, :cond_3

    .line 505
    iget v3, p2, Lcom/centauri/http/core/Request;->readTimeout:I

    if-lez v3, :cond_3

    .line 506
    iget v2, p2, Lcom/centauri/http/core/Request;->readTimeout:I

    :cond_3
    if-gtz v0, :cond_4

    const/16 v0, 0x3a98

    :cond_4
    if-gtz v2, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    .line 519
    :goto_1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 520
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method private static trySetCustomHttpsVerify(Ljava/net/HttpURLConnection;Lcom/centauri/http/core/Request;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 245
    :cond_1
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->isHttpsRequest()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 249
    :cond_2
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_3

    return-void

    .line 253
    :cond_3
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 255
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->getCustomHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 257
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 260
    :cond_4
    invoke-virtual {p1}, Lcom/centauri/http/core/Request;->getCustomSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 262
    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_5
    return-void
.end method


# virtual methods
.method addHttpHandler(Lcom/centauri/http/core/HttpHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/centauri/http/core/HttpInterceptor;->httpHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public intercept(Lcom/centauri/http/core/Request;Lcom/centauri/http/core/Response;)Lcom/centauri/http/core/Response;
    .locals 0

    if-nez p1, :cond_0

    return-object p2

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/centauri/http/core/HttpInterceptor;->getResponseFromHttpWithRetry(Lcom/centauri/http/core/Request;)Lcom/centauri/http/core/Response;

    move-result-object p1

    return-object p1
.end method
