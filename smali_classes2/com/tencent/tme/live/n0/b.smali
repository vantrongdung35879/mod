.class public final Lcom/tencent/tme/live/n0/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/n0/b$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/tme/live/n0/b$a;II)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    check-cast p0, Lcom/tencent/tme/live/e0/l;

    .line 1
    iget-boolean v1, p0, Lcom/tencent/tme/live/e0/l;->p:Z

    if-nez v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->d()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/e0/l;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/tme/live/e0/l;->o:Lcom/tencent/tme/live/l0/b;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/tencent/tme/live/e0/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/tme/live/e0/i;-><init>(Lcom/tencent/tme/live/e0/l;II)V

    iget-object p1, p0, Lcom/tencent/tme/live/e0/l;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/tencent/tme/live/e0/l;->a:Lcom/tencent/tme/live/e0/g;

    invoke-static {v1, v0, p1, p0}, Lcom/tencent/tme/live/e0/l;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/tencent/tme/live/e0/g;)V

    goto :goto_1

    :cond_1
    :goto_0
    mul-int/lit8 p1, p1, 0x64

    .line 3
    div-int/2addr p1, p2

    const/16 p0, 0x4b

    if-ge p1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tencent/tme/live/n0/b$a;I)Z
    .locals 6

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x7d000

    :cond_0
    new-array v1, p3, [B

    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Lcom/tencent/tme/live/n0/b;->a(Lcom/tencent/tme/live/n0/b$a;II)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x0

    :cond_2
    invoke-virtual {p0, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {p1, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v3, v4

    invoke-static {p2, v3, v0}, Lcom/tencent/tme/live/n0/b;->a(Lcom/tencent/tme/live/n0/b$a;II)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    const/4 p0, 0x1

    return p0
.end method
