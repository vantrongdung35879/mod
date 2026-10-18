.class public Lcom/tencent/tme/live/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:[B

.field public final synthetic e:Lcom/tencent/tme/live/e/g;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e/g;III[B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e/h;->e:Lcom/tencent/tme/live/e/g;

    iput p2, p0, Lcom/tencent/tme/live/e/h;->a:I

    iput p3, p0, Lcom/tencent/tme/live/e/h;->b:I

    iput p4, p0, Lcom/tencent/tme/live/e/h;->c:I

    iput-object p5, p0, Lcom/tencent/tme/live/e/h;->d:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "MinaThread"

    const-string v1, "socket from ip:"

    const-string v2, "sendRequest...ERROR_CODE_TIMEOUT :"

    const-string v3, "sendRequest...1 isActive:"

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/tencent/tme/live/e/h;->e:Lcom/tencent/tme/live/e/g;

    .line 1
    iget-object v5, v5, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    if-eqz v5, :cond_2

    .line 2
    invoke-interface {v5}, Lcom/tencent/tme/live/f2/j;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tme/live/e/h;->e:Lcom/tencent/tme/live/e/g;

    .line 3
    iget-object v3, v3, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    .line 4
    invoke-interface {v3}, Lcom/tencent/tme/live/f2/j;->isActive()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tme/live/e/h;->e:Lcom/tencent/tme/live/e/g;

    .line 5
    iget-object v3, v3, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    .line 6
    iget v5, p0, Lcom/tencent/tme/live/e/h;->a:I

    iget v6, p0, Lcom/tencent/tme/live/e/h;->b:I

    iget v7, p0, Lcom/tencent/tme/live/e/h;->c:I

    iget-object v8, p0, Lcom/tencent/tme/live/e/h;->d:[B

    invoke-static {v5, v6, v7, v8}, Lcom/tencent/tme/live/h/e;->a(III[B)[B

    move-result-object v5

    .line 7
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 8
    sget-object v6, Lcom/tencent/tme/live/z1/b;->a:Lcom/tencent/tme/live/z1/c;

    check-cast v6, Lcom/tencent/tme/live/z1/e;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v7, Lcom/tencent/tme/live/z1/e$a;

    invoke-direct {v7, v6, v5}, Lcom/tencent/tme/live/z1/e$a;-><init>(Lcom/tencent/tme/live/z1/e;Ljava/nio/ByteBuffer;)V

    .line 10
    invoke-interface {v3, v7}, Lcom/tencent/tme/live/f2/j;->write(Ljava/lang/Object;)Lcom/tencent/tme/live/c2/k;

    iget-object v3, p0, Lcom/tencent/tme/live/e/h;->e:Lcom/tencent/tme/live/e/g;

    .line 11
    iget-object v3, v3, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    .line 12
    invoke-interface {v3}, Lcom/tencent/tme/live/f2/j;->read()Lcom/tencent/tme/live/c2/j;

    move-result-object v3

    const-string v5, "sendRequest...3"

    invoke-static {v0, v5}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget v5, Lcom/tencent/tme/live/e/g;->i:I

    const/16 v5, 0x1388

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v5, v6, v7}, Lcom/tencent/tme/live/c2/h;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tme/live/e/h;->e:Lcom/tencent/tme/live/e/g;

    .line 13
    iget-object v1, v1, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    .line 14
    invoke-interface {v1}, Lcom/tencent/tme/live/f2/j;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to ip:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/e/h;->e:Lcom/tencent/tme/live/e/g;

    .line 15
    iget-object v1, v1, Lcom/tencent/tme/live/e/g;->a:Lcom/tencent/tme/live/f2/j;

    .line 16
    invoke-interface {v1}, Lcom/tencent/tme/live/f2/j;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/tme/live/e/h;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " subcmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/tme/live/e/h;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seq is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/tme/live/e/h;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v0, v1, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    iget-object v1, p0, Lcom/tencent/tme/live/e/h;->e:Lcom/tencent/tme/live/e/g;

    .line 19
    iget-object v1, v1, Lcom/tencent/tme/live/e/g;->g:Lcom/tencent/tme/live/j/c;

    if-eqz v1, :cond_1

    .line 20
    new-instance v2, Lcom/tencent/tme/live/f/c;

    iget v5, p0, Lcom/tencent/tme/live/e/h;->a:I

    iget v6, p0, Lcom/tencent/tme/live/e/h;->b:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/tencent/tme/live/w1/c;->a(II[B[B[B[B)Lcom/tencent/tme/live/w1/c;

    move-result-object v3

    iget v5, p0, Lcom/tencent/tme/live/e/h;->a:I

    iget v6, p0, Lcom/tencent/tme/live/e/h;->b:I

    sget v7, Lcom/tencent/tme/live/e/a;->b:I

    iget v8, p0, Lcom/tencent/tme/live/e/h;->c:I

    const/4 v11, 0x0

    const/4 v12, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lcom/tencent/tme/live/w1/b;->a(IIII[B[B[BI)Lcom/tencent/tme/live/w1/b;

    move-result-object v5

    const/4 v6, -0x2

    invoke-direct {v2, v6, v3, v5}, Lcom/tencent/tme/live/f/c;-><init>(ILcom/tencent/tme/live/w1/c;Lcom/tencent/tme/live/w1/b;)V

    check-cast v1, Lcom/tencent/tme/live/e/f$b;

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/e/f$b;->b(Lcom/tencent/tme/live/f/c;)V

    :cond_1
    :goto_0
    const-string v1, "sendRequest...5"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "sendRequest...ERROR_NOT_CONN"

    .line 21
    invoke-static {v0, v1, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iget-object v1, p0, Lcom/tencent/tme/live/e/h;->e:Lcom/tencent/tme/live/e/g;

    .line 23
    iget-object v1, v1, Lcom/tencent/tme/live/e/g;->g:Lcom/tencent/tme/live/j/c;

    if-eqz v1, :cond_3

    .line 24
    new-instance v2, Lcom/tencent/tme/live/f/c;

    iget v5, p0, Lcom/tencent/tme/live/e/h;->a:I

    iget v6, p0, Lcom/tencent/tme/live/e/h;->b:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/tencent/tme/live/w1/c;->a(II[B[B[B[B)Lcom/tencent/tme/live/w1/c;

    move-result-object v3

    iget v5, p0, Lcom/tencent/tme/live/e/h;->a:I

    iget v6, p0, Lcom/tencent/tme/live/e/h;->b:I

    sget v7, Lcom/tencent/tme/live/e/a;->b:I

    iget v8, p0, Lcom/tencent/tme/live/e/h;->c:I

    const/4 v11, 0x0

    const/4 v12, -0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lcom/tencent/tme/live/w1/b;->a(IIII[B[B[BI)Lcom/tencent/tme/live/w1/b;

    move-result-object v5

    const/4 v6, -0x4

    invoke-direct {v2, v6, v3, v5}, Lcom/tencent/tme/live/f/c;-><init>(ILcom/tencent/tme/live/w1/c;Lcom/tencent/tme/live/w1/b;)V

    check-cast v1, Lcom/tencent/tme/live/e/f$b;

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/e/f$b;->b(Lcom/tencent/tme/live/f/c;)V

    :cond_3
    invoke-static {}, Lcom/tencent/tme/live/e/f;->b()Lcom/tencent/tme/live/e/f;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v4}, Lcom/tencent/tme/live/e/f;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 26
    const-string v2, "sendRequest error : "

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2, v0, v4}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/tencent/tme/live/e/h;->e:Lcom/tencent/tme/live/e/g;

    .line 27
    iget-object v0, v0, Lcom/tencent/tme/live/e/g;->g:Lcom/tencent/tme/live/j/c;

    if-eqz v0, :cond_4

    .line 28
    new-instance v1, Lcom/tencent/tme/live/f/c;

    iget v2, p0, Lcom/tencent/tme/live/e/h;->a:I

    iget v3, p0, Lcom/tencent/tme/live/e/h;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/tencent/tme/live/w1/c;->a(II[B[B[B[B)Lcom/tencent/tme/live/w1/c;

    move-result-object v2

    iget v3, p0, Lcom/tencent/tme/live/e/h;->a:I

    iget v4, p0, Lcom/tencent/tme/live/e/h;->b:I

    sget v5, Lcom/tencent/tme/live/e/a;->b:I

    iget v6, p0, Lcom/tencent/tme/live/e/h;->c:I

    const/4 v9, 0x0

    const/4 v10, -0x5

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/tencent/tme/live/w1/b;->a(IIII[B[B[BI)Lcom/tencent/tme/live/w1/b;

    move-result-object v3

    const/4 v4, -0x5

    invoke-direct {v1, v4, v2, v3}, Lcom/tencent/tme/live/f/c;-><init>(ILcom/tencent/tme/live/w1/c;Lcom/tencent/tme/live/w1/b;)V

    check-cast v0, Lcom/tencent/tme/live/e/f$b;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/e/f$b;->b(Lcom/tencent/tme/live/f/c;)V

    :cond_4
    :goto_1
    return-void
.end method
