.class public Lcom/tencent/tme/live/e/d;
.super Ljava/lang/Object;


# static fields
.field public static l:Lcom/tencent/tme/live/e/d;


# instance fields
.field public a:Lcom/tencent/tme/live/j/a;

.field public b:I

.field public final c:Lcom/tencent/tme/live/k/a;

.field public final d:Lcom/tencent/tme/live/k/a$a;

.field public final e:Lcom/tencent/tme/live/k/b;

.field public final f:Lcom/tencent/tme/live/k/b$a;

.field public final g:Lcom/tencent/tme/live/k/d;

.field public final h:Lcom/tencent/tme/live/k/d$a;

.field public final i:Lcom/tencent/tme/live/k/c;

.field public final j:Lcom/tencent/tme/live/k/c$a;

.field public volatile k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tme/live/e/d;->b:I

    new-instance v0, Lcom/tencent/tme/live/k/a;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/d;->c:Lcom/tencent/tme/live/k/a;

    new-instance v0, Lcom/tencent/tme/live/k/a$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/a$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/d;->d:Lcom/tencent/tme/live/k/a$a;

    new-instance v0, Lcom/tencent/tme/live/k/b;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/d;->e:Lcom/tencent/tme/live/k/b;

    new-instance v0, Lcom/tencent/tme/live/k/b$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/b$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    new-instance v0, Lcom/tencent/tme/live/k/d;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/d;->g:Lcom/tencent/tme/live/k/d;

    new-instance v0, Lcom/tencent/tme/live/k/d$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/d$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/d;->h:Lcom/tencent/tme/live/k/d$a;

    new-instance v0, Lcom/tencent/tme/live/k/c;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/d;->i:Lcom/tencent/tme/live/k/c;

    new-instance v0, Lcom/tencent/tme/live/k/c$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/k/c$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/e/d;->j:Lcom/tencent/tme/live/k/c$a;

    const v0, 0x41eb0

    iput v0, p0, Lcom/tencent/tme/live/e/d;->k:I

    return-void
.end method

.method public static declared-synchronized b()Lcom/tencent/tme/live/e/d;
    .locals 2

    const-class v0, Lcom/tencent/tme/live/e/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/e/d;->l:Lcom/tencent/tme/live/e/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/e/d;

    invoke-direct {v1}, Lcom/tencent/tme/live/e/d;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/e/d;->l:Lcom/tencent/tme/live/e/d;

    :cond_0
    sget-object v1, Lcom/tencent/tme/live/e/d;->l:Lcom/tencent/tme/live/e/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 6

    const-string v0, "MinaConnectControl"

    const-string v1, "utf-8"

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/tencent/tme/live/e/a;->n:Ljava/lang/String;

    .line 1
    const-string v4, "game_openid"

    invoke-static {v4}, Lcom/tencent/tme/live/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tme/live/l/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v3

    .line 3
    const-string v4, "tme_openid"

    invoke-static {v4}, Lcom/tencent/tme/live/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tme/live/l/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tme/live/f/d;->a:[B

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v3

    .line 5
    const-string v4, "auth_key"

    invoke-static {v4}, Lcom/tencent/tme/live/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tme/live/l/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x1

    .line 6
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v5}, Lcom/tencent/tme/live/v/d;->a([BI)[B

    move-result-object v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-object v4, v2

    .line 7
    :goto_0
    :try_start_2
    iput-object v4, v3, Lcom/tencent/tme/live/f/d;->b:[B

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v3

    .line 8
    const-string v4, "tme_ltoken"

    invoke-static {v4}, Lcom/tencent/tme/live/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tme/live/l/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 9
    :try_start_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v5}, Lcom/tencent/tme/live/v/d;->a([BI)[B

    move-result-object v1
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-object v1, v2

    .line 10
    :goto_1
    :try_start_4
    iput-object v1, v3, Lcom/tencent/tme/live/f/d;->c:[B

    invoke-virtual {p0, v5}, Lcom/tencent/tme/live/e/d;->a(Z)V

    goto :goto_2

    .line 11
    :cond_0
    const-string v1, "[TME_NET_LINK]start AuthProxy......"

    invoke-static {v0, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tme/live/e/d;->c:Lcom/tencent/tme/live/k/a;

    new-instance v3, Lcom/tencent/tme/live/e/b;

    invoke-direct {v3, p0}, Lcom/tencent/tme/live/e/b;-><init>(Lcom/tencent/tme/live/e/d;)V

    iget-object v4, p0, Lcom/tencent/tme/live/e/d;->d:Lcom/tencent/tme/live/k/a$a;

    const/4 v5, 0x0

    .line 12
    invoke-virtual {v1, v3, v4, v5}, Lcom/tencent/tme/live/k/e;->a(Lcom/tencent/tme/live/k/e$b;Ljava/lang/Object;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 13
    const-string v3, " connect : "

    invoke-static {v3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v3, v0, v2}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final a(Z)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TME_NET_LINK]start ConnProxy... isCheckUserKey:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MinaConnectControl"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tme/live/f/d;->a:[B

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tme/live/f/d;->c:[B

    if-eqz v0, :cond_7

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v3, Lcom/tencent/tme/live/e/a;->j:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    :try_start_0
    const-string v5, "utf-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    new-array v3, v4, [B

    :goto_0
    if-nez v3, :cond_2

    return-void

    .line 15
    :cond_2
    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/tme/live/f/d;->b:[B

    const-string v6, "userkey_bytes is null"

    const-string v7, ""

    const/4 v8, 0x0

    if-nez v5, :cond_3

    .line 16
    invoke-static {v1, v6, v8}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    invoke-static {v7}, Lcom/tencent/tme/live/l/c;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v9, "authkey_bytes  :  "

    invoke-static {v9}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Lcom/tencent/tme/live/s2/g;->a([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->a()Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;

    move-result-object v10

    invoke-virtual {v10, v3, v5}, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->a([B[B)[B

    move-result-object v3

    if-nez v3, :cond_4

    .line 18
    invoke-static {v1, v6, v8}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    invoke-static {v7}, Lcom/tencent/tme/live/l/c;->b(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {v9}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/tencent/tme/live/s2/g;->a([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "userkey_bytes  :  "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/tme/live/s2/g;->a([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "authkeymd5"

    if-eqz p1, :cond_5

    .line 20
    invoke-static {v6}, Lcom/tencent/tme/live/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/l/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    const-string v6, "authkey_bytes check"

    invoke-static {v1, v6}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v5}, Lcom/tencent/tme/live/s2/g;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v0, "authkey_bytes not equal"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "authkey_bytes1 : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/tencent/tme/live/s2/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "authkey_bytes2 : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/tencent/tme/live/l/c;->b(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_5
    const-string p1, "authkey_bytes not check"

    invoke-static {v1, p1, v8}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    invoke-static {v5}, Lcom/tencent/tme/live/s2/g;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {v6}, Lcom/tencent/tme/live/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/tencent/tme/live/l/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_6
    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object p1

    iput-object v3, p1, Lcom/tencent/tme/live/f/d;->e:[B

    iget-object p1, p0, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    array-length v3, v0

    invoke-static {v0, v4, v3}, Lokio/ByteString;->of([BII)Lokio/ByteString;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/tme/live/k/b$a;->b:Lokio/ByteString;

    iget-object p1, p0, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    array-length v0, v2

    invoke-static {v2, v4, v0}, Lokio/ByteString;->of([BII)Lokio/ByteString;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/tme/live/k/b$a;->c:Lokio/ByteString;

    iget-object p1, p0, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    sget-object v0, Lcom/tencent/tme/live/e/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Lcom/tencent/tme/live/k/b$a;->d:I

    const-string p1, "connProxy begin"

    invoke-static {v1, p1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/tme/live/e/d;->e:Lcom/tencent/tme/live/k/b;

    new-instance v0, Lcom/tencent/tme/live/e/d$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/e/d$a;-><init>(Lcom/tencent/tme/live/e/d;)V

    iget-object v1, p0, Lcom/tencent/tme/live/e/d;->f:Lcom/tencent/tme/live/k/b$a;

    .line 26
    invoke-virtual {p1, v0, v1, v4}, Lcom/tencent/tme/live/k/e;->a(Lcom/tencent/tme/live/k/e$b;Ljava/lang/Object;I)V

    return-void

    .line 27
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/tencent/tme/live/e/d;->a:Lcom/tencent/tme/live/j/a;

    if-eqz p1, :cond_8

    check-cast p1, Lcom/tencent/tme/live/e/f$a;

    const-string v0, "\u5efa\u7acb\u957f\u8fde\u63a5\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/e/f$a;->a(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public c()V
    .locals 4

    const-string v0, "utf-8"

    const-string v1, "MinaConnectControl"

    const-string v2, "[TME_NET_LINK]start LogoutProxy... "

    invoke-static {v1, v2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/e/d;->h:Lcom/tencent/tme/live/k/d$a;

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tme/live/f/d;->c()[B

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v1, Lcom/tencent/tme/live/k/d$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tme/live/e/d;->h:Lcom/tencent/tme/live/k/d$a;

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tme/live/f/d;->b()[B

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v1, Lcom/tencent/tme/live/k/d$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/e/d;->g:Lcom/tencent/tme/live/k/d;

    new-instance v1, Lcom/tencent/tme/live/e/d$b;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/e/d$b;-><init>(Lcom/tencent/tme/live/e/d;)V

    iget-object v2, p0, Lcom/tencent/tme/live/e/d;->h:Lcom/tencent/tme/live/k/d$a;

    const/4 v3, 0x1

    .line 1
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tme/live/k/e;->a(Lcom/tencent/tme/live/k/e$b;Ljava/lang/Object;I)V

    return-void
.end method
