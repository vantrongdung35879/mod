.class public Lcom/tencent/tme/live/i/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/tencent/tme/live/i/f$a;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/tencent/tme/live/i/f;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/i/f;Landroid/content/Context;Lcom/tencent/tme/live/i/f$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/i/d;->d:Lcom/tencent/tme/live/i/f;

    iput-object p2, p0, Lcom/tencent/tme/live/i/d;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/tme/live/i/d;->b:Lcom/tencent/tme/live/i/f$a;

    iput-object p4, p0, Lcom/tencent/tme/live/i/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/tencent/tme/live/i/d;->d:Lcom/tencent/tme/live/i/f;

    iget-object v9, v1, Lcom/tencent/tme/live/i/d;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/tencent/tme/live/i/d;->b:Lcom/tencent/tme/live/i/f$a;

    iget-object v4, v1, Lcom/tencent/tme/live/i/d;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/tencent/tme/live/i/f;->e:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/tencent/tme/live/i/f;->d:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v10, Lcom/tencent/tme/live/i/f;->c:J

    sub-long/2addr v6, v10

    sget v0, Lcom/tencent/tme/live/i/f;->d:I

    int-to-long v10, v0

    cmp-long v0, v6, v10

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/tencent/tme/live/i/f;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    sget-object v0, Lcom/tencent/tme/live/i/f;->f:Lcom/tencent/tme/live/i/f$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, v5}, Lcom/tencent/tme/live/i/f$b;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_1
    :goto_0
    move-object v0, v4

    check-cast v0, Lcom/tencent/tme/live/i/i$b;

    .line 5
    iget-object v6, v0, Lcom/tencent/tme/live/i/i$b;->b:Ljava/lang/Object;

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 6
    :goto_1
    iput-object v6, v2, Lcom/tencent/tme/live/i/f;->a:[B

    move-object v6, v2

    check-cast v6, Lcom/tencent/tme/live/i/i;

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/tencent/tme/live/i/i$b;->a:Ljava/lang/String;

    const/4 v11, 0x3

    .line 8
    new-array v12, v11, [Ljava/lang/Object;

    sget-object v13, Lcom/tencent/tme/live/e/a;->f:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    sget-object v13, Lcom/tencent/tme/live/e/a;->k:Ljava/lang/String;

    aput-object v13, v12, v5

    const/4 v13, 0x2

    aput-object v8, v12, v13

    const-string v8, "https://%s/%s/%s"

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/tencent/tme/live/i/i$b;->a:Ljava/lang/String;

    .line 10
    new-array v8, v13, [Ljava/lang/Object;

    sget-object v12, Lcom/tencent/tme/live/e/a;->k:Ljava/lang/String;

    aput-object v12, v8, v14

    aput-object v0, v8, v5

    const-string v0, "/%s/%s"

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    sget v8, Lcom/tencent/tme/live/e/a;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v12, Lcom/tencent/tme/live/e/a;->d:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 12
    sget-object v15, Lcom/tencent/tme/live/b/a;->b:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 13
    sget v16, Lcom/tencent/tme/live/b/a;->a:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    sget v17, Lcom/tencent/tme/live/e/a;->i:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 14
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10, v14, v14}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v10

    .line 15
    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 16
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v18

    const/16 v11, 0xf

    .line 17
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v14

    aput-object v12, v11, v5

    sget-object v8, Lcom/tencent/tme/live/e/a;->n:Ljava/lang/String;

    aput-object v8, v11, v13

    sget-object v8, Lcom/tencent/tme/live/e/a;->o:Ljava/lang/String;

    const/4 v12, 0x3

    aput-object v8, v11, v12

    sget-object v8, Lcom/tencent/tme/live/e/a;->p:Ljava/lang/String;

    const/4 v12, 0x4

    aput-object v8, v11, v12

    sget-object v8, Lcom/tencent/tme/live/e/a;->r:Ljava/lang/String;

    const/4 v12, 0x5

    aput-object v8, v11, v12

    const/4 v8, 0x6

    aput-object v15, v11, v8

    const/4 v8, 0x7

    aput-object v16, v11, v8

    const/16 v8, 0x8

    aput-object v17, v11, v8

    sget-object v8, Lcom/tencent/tme/live/e/a;->u:Ljava/lang/String;

    const/16 v12, 0x9

    aput-object v8, v11, v12

    const/16 v8, 0xa

    aput-object v10, v11, v8

    const/16 v8, 0xb

    aput-object v18, v11, v8

    sget-object v8, Lcom/tencent/tme/live/e/a;->s:Ljava/lang/String;

    const/16 v10, 0xc

    aput-object v8, v11, v10

    sget-object v8, Lcom/tencent/tme/live/e/a;->t:Ljava/lang/String;

    const/16 v10, 0xd

    aput-object v8, v11, v10

    sget-object v8, Lcom/tencent/tme/live/e/a;->q:Ljava/lang/String;

    const/16 v10, 0xe

    aput-object v8, v11, v10

    const-string v8, "?client_type=%s&client_ver=%s&openid=%s&channel=%s&partition=%s&area=%s&model=%s&os_ver=%s&seq=%s&lang=%s&timezone=%s&timezoneId=%s&regionid=%s&gameid=%s&platid=%s"

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "&sign="

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 18
    iget-object v6, v6, Lcom/tencent/tme/live/i/f;->a:[B

    const-string v11, ""

    if-eqz v6, :cond_3

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :cond_3
    move-object v12, v11

    :goto_2
    invoke-static {v0, v8, v12}, Lcom/tencent/tme/live/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/tencent/tme/live/e/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "getToken ori: "

    const-string v8, ",thread:"

    invoke-static {v6, v0, v8}, Lcom/tencent/tme/live/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "BaseUrlWithParamProxy"

    invoke-static {v8, v6}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :try_start_3
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    const-string v12, "UTF-8"

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/w/a;->a([B)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 20
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "getToken result: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v6, Lcom/tencent/tme/live/e/a;->i:I

    add-int/2addr v6, v5

    sput v6, Lcom/tencent/tme/live/e/a;->i:I

    .line 22
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v5, v2, Lcom/tencent/tme/live/i/f;->b:Lcom/tencent/tme/live/i/c;

    iget-object v6, v2, Lcom/tencent/tme/live/i/f;->a:[B

    new-instance v8, Lcom/tencent/tme/live/i/e;

    invoke-direct {v8, v2, v4, v3}, Lcom/tencent/tme/live/i/e;-><init>(Lcom/tencent/tme/live/i/f;Ljava/lang/Object;Lcom/tencent/tme/live/i/f$a;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v3, "application/octet-stream;charset=utf-8"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    sget-boolean v3, Lcom/tencent/tme/live/e/a;->c:Z

    const-string v10, "HttpBaseClient"

    if-eqz v3, :cond_4

    const-string v3, "url ="

    const-string v4, " PluginVersion ="

    invoke-static {v3, v0, v4}, Lcom/tencent/tme/live/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/tme/live/e/a;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 25
    invoke-static {v10, v3, v4}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_4
    :try_start_4
    iget-object v3, v5, Lcom/tencent/tme/live/i/c;->a:Lcom/tencent/tme/live/v/m;

    const-string v7, "application/octet-stream;charset=utf-8"

    .line 27
    iget-object v4, v3, Lcom/tencent/tme/live/v/a;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v5, v3, Lcom/tencent/tme/live/v/a;->e:Lorg/apache/http/protocol/HttpContext;

    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    .line 28
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    .line 29
    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 30
    invoke-virtual {v6, v2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 31
    invoke-virtual/range {v3 .. v9}, Lcom/tencent/tme/live/v/m;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/tencent/tme/live/v/k;Landroid/content/Context;)Lcom/tencent/tme/live/v/j;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 32
    sget-boolean v2, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz v2, :cond_5

    const-string v2, "HttpBaseClient post Exception : "

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v10, v3}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return-void
.end method
