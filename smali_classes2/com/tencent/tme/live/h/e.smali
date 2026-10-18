.class public Lcom/tencent/tme/live/h/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(IIILjava/lang/String;[B)Lcom/tencent/protocol/tme/cs_head/CSHead;
    .locals 1

    new-instance v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;

    invoke-direct {v0}, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->command:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->subcmd:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->seq:Ljava/lang/Integer;

    sget p0, Lcom/tencent/tme/live/e/a;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->client_type:Ljava/lang/Integer;

    const/4 p0, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->head_flag:Ljava/lang/Integer;

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/tencent/tme/live/e/a;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->client_ver:Ljava/lang/Integer;

    invoke-static {p4}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->tme_ltoken:Lokio/ByteString;

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->ext:Lokio/ByteString;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->result:Ljava/lang/Integer;

    sget-object p0, Lcom/tencent/tme/live/e/a;->q:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->platid:Ljava/lang/String;

    sget-object p0, Lcom/tencent/tme/live/e/a;->s:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->regionid:Ljava/lang/String;

    sget-object p0, Lcom/tencent/tme/live/e/a;->r:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->area:Ljava/lang/String;

    sget-object p0, Lcom/tencent/tme/live/e/a;->p:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->partition:Ljava/lang/String;

    sget-object p0, Lcom/tencent/tme/live/e/a;->o:Ljava/lang/String;

    iput-object p0, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->channel:Ljava/lang/String;

    iput-object p3, v0, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->tme_openid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/protocol/tme/cs_head/CSHead$Builder;->build()Lcom/tencent/protocol/tme/cs_head/CSHead;

    move-result-object p0

    return-object p0
.end method

.method public static a(III[B)[B
    .locals 12

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0xe

    aput-byte v3, v1, v2

    invoke-static {v1}, Lcom/tencent/tme/live/s2/b;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 1
    const-string v4, "RequestUtil"

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object v3, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->CMD_AUTH:Lcom/tencent/protocol/tme/auth/auth_cmd_types;

    invoke-virtual {v3}, Lcom/tencent/protocol/tme/auth/auth_cmd_types;->getValue()I

    move-result v3

    if-ne p0, v3, :cond_0

    sget-object v3, Lcom/tencent/protocol/tme/auth/auth_subcmd;->SUBCMD_AUTH_TOKEN:Lcom/tencent/protocol/tme/auth/auth_subcmd;

    invoke-virtual {v3}, Lcom/tencent/protocol/tme/auth/auth_subcmd;->getValue()I

    move-result v3

    if-ne p1, v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {p0, p1, p2, v3, v6}, Lcom/tencent/tme/live/h/e;->a(IIILjava/lang/String;[B)Lcom/tencent/protocol/tme/cs_head/CSHead;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v3

    .line 3
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/tencent/tme/live/f/d;->c()[B

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    .line 4
    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tme/live/f/d;->b()[B

    move-result-object v3

    invoke-static {p0, p1, p2, v6, v3}, Lcom/tencent/tme/live/h/e;->a(IIILjava/lang/String;[B)Lcom/tencent/protocol/tme/cs_head/CSHead;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/tmes/Message;->toByteArray()[B

    move-result-object p1

    array-length p2, p1

    int-to-long v6, p2

    invoke-static {v6, v7}, Lcom/tencent/tme/live/s2/a;->a(J)[B

    move-result-object p2

    invoke-static {}, Lcom/tencent/tme/live/f/d;->a()Lcom/tencent/tme/live/f/d;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, p3

    int-to-long v6, v3

    invoke-static {v6, v7}, Lcom/tencent/tme/live/s2/a;->a(J)[B

    move-result-object v3

    new-array v6, v0, [[B

    aput-object p3, v6, v2

    invoke-static {v3, v6}, Lcom/tencent/tme/live/s2/a;->a([B[[B)[B

    move-result-object p3

    invoke-static {}, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->a()Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;

    move-result-object v3

    invoke-static {p0}, Lcom/tencent/tme/live/f/d;->a(Lcom/tencent/protocol/tme/cs_head/CSHead;)[B

    move-result-object p0

    invoke-virtual {v3, p0, p3}, Lcom/tencent/tme/net/encrypt/MinaNetworkEngine;->b([B[B)[B

    move-result-object p0

    array-length p3, p0

    int-to-long v6, p3

    invoke-static {v6, v7}, Lcom/tencent/tme/live/s2/a;->a(J)[B

    move-result-object p3

    const/4 v3, 0x5

    new-array v3, v3, [[B

    aput-object p2, v3, v2

    aput-object p1, v3, v0

    const/4 p1, 0x2

    aput-object p3, v3, p1

    const/4 p2, 0x3

    aput-object p0, v3, p2

    new-array p0, v0, [B

    const/16 p3, 0xf

    aput-byte p3, p0, v2

    const/4 p3, 0x4

    aput-object p0, v3, p3

    invoke-static {v1, v3}, Lcom/tencent/tme/live/s2/a;->a([B[[B)[B

    move-result-object p0

    array-length v1, p0

    add-int/2addr v1, p3

    int-to-long v6, v1

    .line 6
    new-array p3, p3, [B

    const-wide/16 v8, 0xff

    and-long v10, v6, v8

    long-to-int v1, v10

    int-to-byte v1, v1

    aput-byte v1, p3, p2

    const/16 p2, 0x8

    shr-long v10, v6, p2

    and-long/2addr v10, v8

    long-to-int p2, v10

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    const/16 p1, 0x10

    shr-long p1, v6, p1

    and-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, p3, v0

    const/16 p1, 0x18

    shr-long p1, v6, p1

    and-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, p3, v2

    .line 7
    new-array p1, v0, [[B

    aput-object p0, p1, v2

    invoke-static {p3, p1}, Lcom/tencent/tme/live/s2/a;->a([B[[B)[B

    move-result-object p0

    const-string p1, "result : "

    invoke-static {p1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/tencent/tme/live/s2/b;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v4, p1, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method
