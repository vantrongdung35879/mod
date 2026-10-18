.class public Lcom/tencent/tme/live/x/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = ""


# direct methods
.method public static a()Ljava/lang/String;
    .locals 14

    const-string v0, "DES/ECB/PKCS5Padding"

    const-string v1, "DES"

    const-string v2, "utf-8"

    sget-object v3, Lcom/tencent/tme/live/e/a;->e:Ljava/lang/String;

    const-string v4, ">srW/8;&"

    sget v5, Lcom/tencent/tme/live/x/a;->a:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1
    :try_start_0
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v8, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v3, v6

    .line 2
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v3, :cond_4

    array-length v11, v3

    if-gtz v11, :cond_1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_1
    array-length v12, v3

    if-ge v11, v12, :cond_3

    aget-byte v12, v3, v11

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v13, v10, :cond_2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    :goto_2
    move-object v3, v6

    .line 3
    :goto_3
    sget-boolean v7, Lcom/tencent/tme/live/e/a;->c:Z

    const-string v11, "HttpDnsManager"

    if-eqz v7, :cond_5

    const-string v7, "getIpString conn:"

    invoke-static {v7}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v12, Lcom/tencent/tme/live/e/a;->e:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "encode-->"

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :try_start_1
    const-string v7, "http://182.254.116.117/d?dn=%s.&id=1&ttl=1"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v9

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v5, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dns_url req url : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-static {v11, v5, v6}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    const-string v5, "client start"

    .line 6
    invoke-static {v11, v5, v6}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_6
    new-instance v5, Lcom/tencent/tme/live/v/m;

    invoke-direct {v5}, Lcom/tencent/tme/live/v/m;-><init>()V

    .line 8
    iget-object v7, v5, Lcom/tencent/tme/live/v/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v12, Lcom/tencent/tme/live/v/l;

    const/16 v13, 0xbb8

    invoke-direct {v12, v10, v13}, Lcom/tencent/tme/live/v/l;-><init>(II)V

    invoke-virtual {v7, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 9
    new-instance v7, Lcom/tencent/tme/live/x/b$a;

    invoke-direct {v7}, Lcom/tencent/tme/live/x/b$a;-><init>()V

    invoke-virtual {v5, v3, v7}, Lcom/tencent/tme/live/v/a;->a(Ljava/lang/String;Lcom/tencent/tme/live/v/k;)Lcom/tencent/tme/live/v/j;

    sget-boolean v3, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz v3, :cond_7

    const-string v3, "client finish"

    .line 10
    invoke-static {v11, v3, v6}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    .line 11
    sget-boolean v5, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz v5, :cond_7

    const-string v5, "getIpString  Exception-->"

    invoke-static {v5}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v5, v11, v6}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    sget-boolean v3, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz v3, :cond_8

    const-string v3, "result-->"

    invoke-static {v3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/tencent/tme/live/x/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v11, v3, v6}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_8
    sget-object v3, Lcom/tencent/tme/live/x/b;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    return-object v8

    :cond_9
    sget-object v3, Lcom/tencent/tme/live/x/b;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 14
    :try_start_2
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v5, v4, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, v10, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    new-array v4, v4, [B

    :goto_5
    if-ge v9, v1, :cond_a

    div-int/lit8 v5, v9, 0x2

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    add-int/2addr v10, v7

    int-to-byte v7, v10

    aput-byte v7, v4, v5

    add-int/lit8 v9, v9, 0x2

    goto :goto_5

    .line 16
    :cond_a
    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v1

    goto :goto_6

    :catch_2
    move-exception v0

    sget-boolean v1, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz v1, :cond_b

    const-string v1, "HttpDns decrypt : "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpDns"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_b
    :goto_6
    sget-boolean v0, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz v0, :cond_c

    const-string v0, "decode-->"

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v11, v0, v6}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-object v8
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    aget-object p0, p0, v1

    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/tme/live/x/a;->a:I

    .line 19
    const-string v5, "^(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|[1-9])\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    nop

    sget-boolean p0, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz p0, :cond_1

    .line 21
    const-string p0, "\u89e3\u6790IP\u5730\u5740\u5931\u8d25"

    const/4 v1, 0x0

    const-string v2, "HttpDnsManager"

    invoke-static {v2, p0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-object v0
.end method
