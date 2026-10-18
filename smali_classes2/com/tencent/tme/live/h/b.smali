.class public Lcom/tencent/tme/live/h/b;
.super Ljava/lang/Object;


# direct methods
.method public static a([BIZ)[B
    .locals 5

    const/4 v0, 0x2

    and-int/2addr p1, v0

    const/4 v1, 0x0

    const-string v2, "MessageHandleUtil"

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 13
    const-string p1, "FLAG_ZIP_COMPRESS"

    invoke-static {v2, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    array-length p1, p0

    sub-int/2addr p1, v0

    new-array p2, p1, [B

    invoke-static {p0, v0, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    new-instance p0, Ljava/util/zip/Inflater;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->reset()V

    invoke-virtual {p0, p2}, Ljava/util/zip/Inflater;->setInput([B)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 p1, 0x400

    :try_start_0
    new-array p1, p1, [B

    :goto_0
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v4

    invoke-virtual {v0, p1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    .line 16
    array-length p0, p2

    new-array p1, p0, [B

    invoke-static {p2, v3, p1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 17
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    throw p0

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "not FLAG_ZIP_COMPRESS : "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {v2, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_2

    .line 20
    array-length p1, p0

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    array-length p2, p0

    sub-int/2addr p2, v0

    invoke-static {p0, v0, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_2
    array-length p1, p0

    new-array p1, p1, [B

    array-length p2, p0

    invoke-static {p0, v3, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    sget-boolean p0, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz p0, :cond_3

    const-string p0, "data : "

    invoke-static {p0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/tencent/tme/live/s2/b;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {v2, p0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object p1
.end method

.method public static a([BI[B)[B
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, "MessageHandleUtil"

    if-ge v0, p1, :cond_0

    .line 9
    const-string p0, "payload length is less encrypted data length"

    invoke-static {v2, p0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 10
    :cond_0
    array-length v0, p0

    const/4 v3, 0x0

    if-ne v0, p1, :cond_1

    new-array v0, p1, [B

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->a()Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->a([B[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-array v0, p1, [B

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p0

    sub-int/2addr v4, p1

    new-array v4, v4, [B

    array-length v5, p0

    sub-int/2addr v5, p1

    invoke-static {p0, p1, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->a()Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->a([B[B)[B

    move-result-object p0

    if-eqz p0, :cond_2

    sget-boolean p1, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz p1, :cond_3

    const-string p1, "decrypt_data : "

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/tencent/tme/live/s2/b;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "decrypt_data is null"

    .line 11
    :goto_0
    invoke-static {v2, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 p1, 0x1

    .line 12
    new-array p1, p1, [[B

    aput-object v4, p1, v3

    invoke-static {p0, p1}, Lcom/tencent/tme/live/s2/a;->a([B[[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BLcom/tencent/protocol/tme/cs_head/CSHead;)[B
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/tencent/tme/live/s2/a;->b([B)I

    move-result v1

    array-length v3, p0

    sub-int/2addr v3, v0

    new-array v4, v3, [B

    invoke-static {p0, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->head_flag:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    const/4 v0, 0x1

    const/4 v5, 0x0

    const-string v6, "MessageHandleUtil"

    if-eqz p0, :cond_0

    .line 1
    const-string p0, "FLAG_PARTIAL_ENCRYPT"

    invoke-static {v6, p0, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-static {p1}, Lcom/tencent/tme/live/f/d;->a(Lcom/tencent/protocol/tme/cs_head/CSHead;)[B

    move-result-object p0

    invoke-static {v4, v1, p0}, Lcom/tencent/tme/live/h/b;->a([BI[B)[B

    move-result-object p0

    iget-object p1, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->head_flag:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1, v0}, Lcom/tencent/tme/live/h/b;->a([BIZ)[B

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    const-string p0, "not FLAG_PARTIAL_ENCRYPT"

    invoke-static {v6, p0, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object p0, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->head_flag:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    .line 5
    const-string p0, "FLAG_FULL_ENCRYPT"

    invoke-static {v6, p0, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p1}, Lcom/tencent/tme/live/f/d;->a(Lcom/tencent/protocol/tme/cs_head/CSHead;)[B

    move-result-object p0

    invoke-static {v4, v1, p0}, Lcom/tencent/tme/live/h/b;->a([BI[B)[B

    move-result-object p0

    iget-object p1, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->head_flag:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1, v0}, Lcom/tencent/tme/live/h/b;->a([BIZ)[B

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_1
    const-string p0, "not FLAG_FULL_ENCRYPT"

    invoke-static {v6, p0, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    new-array p0, v3, [B

    invoke-static {v4, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/tencent/protocol/tme/cs_head/CSHead;->head_flag:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1, v2}, Lcom/tencent/tme/live/h/b;->a([BIZ)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method
