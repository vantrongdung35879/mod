.class public Lcom/tencent/tme/live/h/c;
.super Lcom/tencent/tme/live/e2/h;


# instance fields
.field public final b:Lcom/tencent/tme/live/j/c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/j/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/e2/h;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/h/c;->b:Lcom/tencent/tme/live/j/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V
    .locals 21

    const-string v1, "MessageHandleUtil"

    const-string v0, "result.capacity is : "

    const-string v2, "i\u5ba2\u6237\u7aef\u63a5\u6536\u5230\u7684\u4fe1\u606f\u4e3a:"

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/tencent/tme/live/h/c;->b:Lcom/tencent/tme/live/j/c;

    const/4 v5, 0x0

    .line 1
    :try_start_0
    move-object/from16 v6, p2

    check-cast v6, Lcom/tencent/tme/live/z1/b;

    sget-boolean v7, Lcom/tencent/tme/live/e/a;->c:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/tencent/tme/live/z1/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/tencent/tme/live/z1/b;->a()[B

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v7, 0x4

    new-array v8, v7, [B

    const/4 v9, 0x0

    invoke-static {v2, v9, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8}, Lcom/tencent/tme/live/s2/a;->a([B)I

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/tencent/tme/live/z1/b;->c()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v1, v0, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    aget-byte v0, v2, v7

    add-int/lit8 v6, v8, -0x1

    aget-byte v6, v2, v6

    const/16 v7, 0xe

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v0, v7, :cond_2

    const/16 v7, 0xf

    if-ne v6, v7, :cond_2

    const-string v0, "flag is right"

    .line 4
    invoke-static {v1, v0, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    new-array v0, v10, [B

    const/4 v6, 0x5

    invoke-static {v2, v6, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/tencent/tme/live/s2/a;->b([B)I

    move-result v0

    new-array v6, v0, [B

    const/4 v7, 0x7

    invoke-static {v2, v7, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/tencent/tme/live/l/d;->a()Lcom/squareup/tmes/Wire;

    move-result-object v7

    const-class v10, Lcom/tencent/protocol/tme/cs_head/CSHead;

    invoke-virtual {v7, v6, v10}, Lcom/squareup/tmes/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/tmes/Message;

    move-result-object v6

    check-cast v6, Lcom/tencent/protocol/tme/cs_head/CSHead;

    const-string v7, "csHead = %s"

    invoke-virtual {v6}, Lcom/squareup/tmes/Message;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v10, v11, v9

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-static {v1, v7, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iget-object v7, v6, Lcom/tencent/protocol/tme/cs_head/CSHead;->head_flag:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_1

    const-string v7, "FLAG_BROADCAST"

    .line 8
    invoke-static {v1, v7, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v7, v0, 0x7

    add-int/lit8 v0, v0, 0x8

    sub-int/2addr v8, v0

    .line 9
    new-array v0, v8, [B

    invoke-static {v2, v7, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v6}, Lcom/tencent/tme/live/h/b;->a([BLcom/tencent/protocol/tme/cs_head/CSHead;)[B

    move-result-object v14

    if-eqz v4, :cond_5

    iget-object v0, v6, Lcom/tencent/protocol/tme/cs_head/CSHead;->seq:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/tme/live/l/a;->a(Ljava/lang/Integer;)I

    move-result v13

    new-instance v0, Lcom/tencent/tme/live/f/a;

    iget-object v2, v6, Lcom/tencent/protocol/tme/cs_head/CSHead;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v2, v6, Lcom/tencent/protocol/tme/cs_head/CSHead;->subcmd:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/tencent/tme/live/w1/c;->a(II[B[B[B[B)Lcom/tencent/tme/live/w1/c;

    move-result-object v2

    iget-object v7, v6, Lcom/tencent/protocol/tme/cs_head/CSHead;->command:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v6, v6, Lcom/tencent/protocol/tme/cs_head/CSHead;->subcmd:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget v12, Lcom/tencent/tme/live/e/a;->b:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lcom/tencent/tme/live/w1/b;->a(IIII[B[B[BI)Lcom/tencent/tme/live/w1/b;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Lcom/tencent/tme/live/f/a;-><init>(Lcom/tencent/tme/live/w1/c;Lcom/tencent/tme/live/w1/b;)V

    check-cast v4, Lcom/tencent/tme/live/e/f$b;

    invoke-virtual {v4, v0}, Lcom/tencent/tme/live/e/f$b;->b(Lcom/tencent/tme/live/f/a;)V

    goto/16 :goto_1

    :cond_1
    const-string v7, "not FLAG_BROADCAST"

    .line 10
    invoke-static {v1, v7, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v7, v0, 0x7

    add-int/lit8 v0, v0, 0x8

    sub-int/2addr v8, v0

    .line 11
    new-array v0, v8, [B

    invoke-static {v2, v7, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v6}, Lcom/tencent/tme/live/h/b;->a([BLcom/tencent/protocol/tme/cs_head/CSHead;)[B

    move-result-object v14

    if-eqz v4, :cond_5

    iget-object v0, v6, Lcom/tencent/protocol/tme/cs_head/CSHead;->seq:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/tme/live/l/a;->a(Ljava/lang/Integer;)I

    move-result v13

    new-instance v0, Lcom/tencent/tme/live/f/c;

    iget-object v2, v6, Lcom/tencent/protocol/tme/cs_head/CSHead;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v2, v6, Lcom/tencent/protocol/tme/cs_head/CSHead;->subcmd:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lcom/tencent/tme/live/w1/c;->a(II[B[B[B[B)Lcom/tencent/tme/live/w1/c;

    move-result-object v2

    iget-object v7, v6, Lcom/tencent/protocol/tme/cs_head/CSHead;->command:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v6, v6, Lcom/tencent/protocol/tme/cs_head/CSHead;->subcmd:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget v12, Lcom/tencent/tme/live/e/a;->b:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lcom/tencent/tme/live/w1/b;->a(IIII[B[B[BI)Lcom/tencent/tme/live/w1/b;

    move-result-object v6

    invoke-direct {v0, v9, v2, v6}, Lcom/tencent/tme/live/f/c;-><init>(ILcom/tencent/tme/live/w1/c;Lcom/tencent/tme/live/w1/b;)V

    check-cast v4, Lcom/tencent/tme/live/e/f$b;

    invoke-virtual {v4, v0}, Lcom/tencent/tme/live/e/f$b;->b(Lcom/tencent/tme/live/f/c;)V

    goto :goto_1

    :cond_2
    const-string v2, "flag check failed , flag_begin = %s , flag_end = %s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v0, v6, v9

    aput-object v4, v6, v11

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "response convert to byte error ;b is null"

    goto :goto_0

    :cond_4
    const-string v0, "response result is null"

    .line 12
    :goto_0
    invoke-static {v1, v0, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    const-string v2, "parse response error \uff1a"

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v2, v1, v5}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "\u5ba2\u6237\u7aef\u53d1\u751f\u5f02\u5e38 : "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MinaClientHandler"

    invoke-static {v1, v0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/tencent/tme/live/e2/h;->a(Lcom/tencent/tme/live/f2/j;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/tencent/tme/live/f2/j;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
