.class public Lcom/tencent/tme/live/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/k/e$b;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/e/d;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/e/b;->a:Lcom/tencent/tme/live/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const-string v0, "US-ASCII"

    const/4 v1, 0x0

    const-string v2, "MinaConnectControl"

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/tencent/tme/live/e/b;->a:Lcom/tencent/tme/live/e/d;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->d:Lcom/tencent/tme/live/k/a$a;

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/k/a$a;->a:Lcom/tencent/protocol/tme/auth/AuthTokenRsp;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->result:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    .line 4
    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/tencent/tme/live/e/b;->a:Lcom/tencent/tme/live/e/d;

    .line 5
    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->d:Lcom/tencent/tme/live/k/a$a;

    .line 6
    iget-object p1, p1, Lcom/tencent/tme/live/k/a$a;->a:Lcom/tencent/protocol/tme/auth/AuthTokenRsp;

    iget-object p1, p1, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->tme_openid:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 7
    const-string p1, ""

    .line 8
    :cond_1
    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/tme/live/f/d;->a:[B

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/tme/live/e/b;->a:Lcom/tencent/tme/live/e/d;

    .line 9
    iget-object v3, v3, Lcom/tencent/tme/live/e/d;->d:Lcom/tencent/tme/live/k/a$a;

    .line 10
    iget-object v3, v3, Lcom/tencent/tme/live/k/a$a;->a:Lcom/tencent/protocol/tme/auth/AuthTokenRsp;

    iget-object v3, v3, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->auth_key:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->toByteArray()[B

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/tme/live/f/d;->b:[B

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/tme/live/e/b;->a:Lcom/tencent/tme/live/e/d;

    .line 11
    iget-object v3, v3, Lcom/tencent/tme/live/e/d;->d:Lcom/tencent/tme/live/k/a$a;

    .line 12
    iget-object v3, v3, Lcom/tencent/tme/live/k/a$a;->a:Lcom/tencent/protocol/tme/auth/AuthTokenRsp;

    iget-object v3, v3, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->tme_ltoken:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->toByteArray()[B

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/tme/live/f/d;->c:[B

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/tme/live/e/b;->a:Lcom/tencent/tme/live/e/d;

    .line 13
    iget-object v3, v3, Lcom/tencent/tme/live/e/d;->d:Lcom/tencent/tme/live/k/a$a;

    .line 14
    iget-object v3, v3, Lcom/tencent/tme/live/k/a$a;->a:Lcom/tencent/protocol/tme/auth/AuthTokenRsp;

    iget-object v3, v3, Lcom/tencent/protocol/tme/auth/AuthTokenRsp;->token_expires:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/tencent/tme/live/f/d;->d:I

    sget-object v1, Lcom/tencent/tme/live/e/a;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tme/live/l/c;->b(Ljava/lang/String;)V

    .line 15
    const-string v1, "tme_openid"

    invoke-static {v1}, Lcom/tencent/tme/live/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/tencent/tme/live/l/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/tme/live/f/d;->b:[B

    .line 17
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/tencent/tme/live/v/d;->b([BI)[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    const-string p1, "auth_key"

    invoke-static {p1}, Lcom/tencent/tme/live/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/tencent/tme/live/l/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/tme/live/f/d;->c:[B

    .line 20
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/tencent/tme/live/v/d;->b([BI)[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    const-string p1, "tme_ltoken"

    invoke-static {p1}, Lcom/tencent/tme/live/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/tencent/tme/live/l/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[TME_NET_LINK]AuthProxy success token_expires"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tme/live/f/d;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/e/b;->a:Lcom/tencent/tme/live/e/d;

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/e/d;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 25
    :cond_2
    const-string p1, "[TME_NET_LINK]AuthProxy--->failed"

    invoke-static {v2, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    iget-object p1, p0, Lcom/tencent/tme/live/e/b;->a:Lcom/tencent/tme/live/e/d;

    .line 27
    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->a:Lcom/tencent/tme/live/j/a;

    if-eqz p1, :cond_4

    .line 28
    check-cast p1, Lcom/tencent/tme/live/e/f$a;

    const-string v0, "\u7f51\u7edc\u8ba4\u8bc1\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/e/f$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[TME_NET_LINK]AuthProxy  error code -->"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {v2, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AuthProxy\u7f51\u7edc\u8ba4\u8bc1\u5931\u8d25-->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1
    const-string v0, "MinaConnectControl"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/tme/live/e/b;->a:Lcom/tencent/tme/live/e/d;

    .line 3
    iget-object p1, p1, Lcom/tencent/tme/live/e/d;->a:Lcom/tencent/tme/live/j/a;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Lcom/tencent/tme/live/e/f$a;

    const-string v0, "\u7f51\u7edc\u8ba4\u8bc1\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/e/f$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
