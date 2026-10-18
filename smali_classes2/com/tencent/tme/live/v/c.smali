.class public abstract Lcom/tencent/tme/live/v/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/v/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/v/c$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Z

.field public c:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/v/c;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tme/live/v/c;->c:Landroid/os/Looper;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/v/c;->c:Landroid/os/Looper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/v/c;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 20
    iget-object v1, p0, Lcom/tencent/tme/live/v/c;->a:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/v/c;->b(Landroid/os/Message;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 24
    iget-object p1, p0, Lcom/tencent/tme/live/v/c;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/v/c;->b(Landroid/os/Message;)V

    return-void
.end method

.method public abstract a(I[Lorg/apache/http/Header;[B)V
.end method

.method public final a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p2, 0x2

    aput-object p3, v0, p2

    const/4 p2, 0x3

    aput-object p4, v0, p2

    .line 18
    iget-object p2, p0, Lcom/tencent/tme/live/v/c;->a:Landroid/os/Handler;

    invoke-static {p2, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/v/c;->b(Landroid/os/Message;)V

    return-void
.end method

.method public final a(JJ)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const/4 p1, 0x1

    aput-object p2, p3, p1

    .line 22
    iget-object p1, p0, Lcom/tencent/tme/live/v/c;->a:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-static {p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/v/c;->b(Landroid/os/Message;)V

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "AsyncHttpRH"

    const-string v3, "handleMessage error : "

    :try_start_0
    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_8

    const/4 v3, 0x4

    if-eq v4, v9, :cond_6

    if-eq v4, v3, :cond_3

    const/4 v3, 0x5

    if-eq v4, v3, :cond_1

    const/4 v0, 0x6

    if-eq v4, v0, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    const-string v0, "Request got cancelled"

    .line 2
    invoke-static {v2, v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    array-length v3, v0

    if-ne v3, v9, :cond_2

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 4
    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v7

    const-string v0, "Request retry no. %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v2, v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 6
    :cond_2
    const-string v0, "RETRY_MESSAGE didn\'t get enough params"

    goto/16 :goto_1

    .line 8
    :cond_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_5

    array-length v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lt v3, v6, :cond_5

    :try_start_1
    aget-object v3, v0, v7

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aget-object v0, v0, v9

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 9
    const-string v4, "Progress %d from %d (%2.0f%%)"

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_4

    long-to-double v10, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double v10, v10, v14

    long-to-double v12, v12

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v10, v10, v12

    goto :goto_0

    :cond_4
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    aput-object v0, v5, v9

    aput-object v10, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v2, v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 11
    :try_start_2
    const-string v3, "custom onProgress contains an error"

    .line 12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 13
    :cond_5
    const-string v0, "PROGRESS_MESSAGE didn\'t got enough params"

    goto :goto_1

    :cond_6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    array-length v4, v0

    if-lt v4, v3, :cond_7

    aget-object v3, v0, v7

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v0, v9

    check-cast v4, [Lorg/apache/http/Header;

    aget-object v6, v0, v6

    check-cast v6, [B

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v4, v6, v0}, Lcom/tencent/tme/live/v/c;->b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    const-string v0, "FAILURE_MESSAGE didn\'t got enough params"

    .line 7
    :goto_1
    invoke-static {v2, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 13
    :cond_8
    :try_start_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_9

    array-length v4, v0

    if-lt v4, v5, :cond_9

    aget-object v4, v0, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, v0, v9

    check-cast v5, [Lorg/apache/http/Header;

    aget-object v0, v0, v6

    check-cast v0, [B

    invoke-virtual {v1, v4, v5, v0}, Lcom/tencent/tme/live/v/c;->a(I[Lorg/apache/http/Header;[B)V

    goto :goto_2

    :cond_9
    const-string v0, "SUCCESS_MESSAGE didn\'t got enough params"

    .line 14
    invoke-static {v2, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 15
    :try_start_4
    const-string v4, "AsyncHttpResponseHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    .line 16
    const-string v3, "User-space exception detected!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public a(Lcom/tencent/tme/live/v/k;Lorg/apache/http/HttpResponse;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/apache/http/HttpResponse;)V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/v/c;->a(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p1

    new-instance v3, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, p1, v1, v3}, Lcom/tencent/tme/live/v/c;->a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/tencent/tme/live/v/c;->b(I[Lorg/apache/http/Header;[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/v/c;->c:Landroid/os/Looper;

    if-nez v1, :cond_0

    const-string p1, "AsyncHttpRH"

    const-string v1, "Current thread has not called Looper.prepare(). Forcing synchronous mode."

    .line 26
    invoke-static {p1, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    :cond_0
    if-nez p1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/tencent/tme/live/v/c;->a:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v0, Lcom/tencent/tme/live/v/c$a;

    iget-object v1, p0, Lcom/tencent/tme/live/v/c;->c:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tme/live/v/c$a;-><init>(Lcom/tencent/tme/live/v/c;Landroid/os/Looper;)V

    :goto_0
    iput-object v0, p0, Lcom/tencent/tme/live/v/c;->a:Landroid/os/Handler;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/tencent/tme/live/v/c;->a:Landroid/os/Handler;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/tencent/tme/live/v/c;->b:Z

    return-void
.end method

.method public a(Lorg/apache/http/HttpEntity;)[B
    .locals 11

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    const/16 v3, 0x1000

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_0

    const/16 v7, 0x1000

    goto :goto_0

    :cond_0
    long-to-int v7, v1

    :goto_0
    :try_start_0
    new-instance v8, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v8, v7}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-array v3, v3, [B

    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-nez v9, :cond_2

    int-to-long v9, v7

    add-long/2addr v4, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9, v7}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    if-gtz v6, :cond_1

    const-wide/16 v9, 0x1

    goto :goto_2

    :cond_1
    move-wide v9, v1

    :goto_2
    invoke-virtual {p0, v4, v5, v9, v10}, Lcom/tencent/tme/live/v/c;->a(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/tencent/tme/live/v/a;->a(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/tencent/tme/live/v/a;->a(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v8}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object p1

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/tencent/tme/live/v/a;->a(Ljava/io/InputStream;)V

    invoke-static {p1}, Lcom/tencent/tme/live/v/a;->a(Lorg/apache/http/HttpEntity;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "File too large to fit into available memory"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP entity too large to be buffered in memory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    :goto_3
    return-object p1
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/tencent/tme/live/v/c;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/v/c;->b(Landroid/os/Message;)V

    return-void
.end method

.method public final b(I[Lorg/apache/http/Header;[B)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 5
    iget-object p1, p0, Lcom/tencent/tme/live/v/c;->a:Landroid/os/Handler;

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/v/c;->b(Landroid/os/Message;)V

    return-void
.end method

.method public abstract b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public b(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/tme/live/v/c;->b:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/live/v/c;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tme/live/v/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "handler should not be null!"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/v/n;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/v/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/v/c;->a(Landroid/os/Message;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public b(Lcom/tencent/tme/live/v/k;Lorg/apache/http/HttpResponse;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/tencent/tme/live/v/c;->a:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/v/c;->b(Landroid/os/Message;)V

    return-void
.end method
