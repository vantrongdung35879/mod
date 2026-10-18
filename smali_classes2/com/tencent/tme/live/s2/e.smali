.class public Lcom/tencent/tme/live/s2/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 4

    const/16 v0, 0x800

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-lez v2, :cond_0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/tencent/tme/live/s2/j;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/tencent/tme/live/s2/j;->a(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/tencent/tme/live/s2/j;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/tencent/tme/live/s2/j;->a(Ljava/io/Closeable;)V

    return v1

    :goto_1
    invoke-static {p0}, Lcom/tencent/tme/live/s2/j;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/tencent/tme/live/s2/j;->a(Ljava/io/Closeable;)V

    throw v0
.end method
