.class public abstract Lcom/tencent/qimei/ad/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/RandomAccessFile;II)Landroid/util/Pair;
    .locals 8

    const/4 v0, 0x0

    if-ltz p2, :cond_4

    const v1, 0xffff

    if-le p2, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 v2, p1, -0x16

    .line 1
    :try_start_0
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x16

    .line 2
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 3
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-long v2, p1

    .line 5
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    invoke-virtual {p0, p1, v4, v5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 7
    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    add-int/lit8 p0, p0, -0x16

    .line 8
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_2

    sub-int v5, p0, v4

    .line 13
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    const v7, 0x6054b50

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v5, 0x14

    .line 14
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    and-int/2addr v6, v1

    if-ne v6, v4, :cond_1

    .line 15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    add-int/lit8 v6, v6, 0x16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_1
    if-nez p0, :cond_3

    return-object v0

    .line 16
    :cond_3
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 17
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 18
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    invoke-virtual {p2, v1, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 20
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v4, p0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 24
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v0, v3

    const/16 v3, 0x16

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v0, v3, :cond_1

    .line 29
    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/tencent/qimei/ad/b;->a([Ljava/io/Closeable;)V

    return-object v1

    .line 32
    :cond_1
    invoke-static {v2, v0, v5}, Lcom/tencent/qimei/ad/a;->a(Ljava/io/RandomAccessFile;II)Landroid/util/Pair;

    move-result-object v6

    const v7, 0xffff

    if-nez v6, :cond_2

    .line 34
    invoke-static {v2, v0, v7}, Lcom/tencent/qimei/ad/a;->a(Ljava/io/RandomAccessFile;II)Landroid/util/Pair;

    move-result-object v6

    :cond_2
    if-nez v6, :cond_3

    .line 38
    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/tencent/qimei/ad/b;->a([Ljava/io/Closeable;)V

    return-object v1

    .line 42
    :cond_3
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 43
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 45
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x14

    cmp-long v12, v8, v10

    if-ltz v12, :cond_4

    .line 46
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 47
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    const v9, 0x7064b50

    invoke-static {v9}, Ljava/lang/Integer;->reverse(I)I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 49
    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/tencent/qimei/ad/b;->a([Ljava/io/Closeable;)V

    return-object v1

    .line 54
    :cond_4
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v8

    const/16 v9, 0x10

    add-int/2addr v8, v9

    .line 55
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    int-to-long v10, v8

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    .line 56
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v8, v10, v14

    if-ltz v8, :cond_5

    .line 59
    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/tencent/qimei/ad/b;->a([Ljava/io/Closeable;)V

    return-object v1

    .line 62
    :cond_5
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/lit8 v8, v8, 0xc

    .line 63
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    int-to-long v14, v8

    and-long/2addr v12, v14

    add-long/2addr v12, v10

    .line 64
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v6, v12, v14

    if-eqz v6, :cond_6

    .line 66
    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/tencent/qimei/ad/b;->a([Ljava/io/Closeable;)V

    return-object v1

    :cond_6
    const/16 v6, 0x18

    .line 68
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 69
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v12

    int-to-long v12, v12

    sub-long v12, v10, v12

    invoke-virtual {v2, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 71
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v14

    invoke-virtual {v2, v12, v13, v14}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v12, 0x8

    .line 72
    invoke-virtual {v6, v12}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    const-wide v14, 0x20676953204b5041L

    const/16 v16, 0x0

    cmp-long v17, v12, v14

    if-nez v17, :cond_b

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    const-wide v14, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v9, v12, v14

    if-eqz v9, :cond_7

    goto :goto_0

    .line 76
    :cond_7
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    .line 77
    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    int-to-long v14, v6

    cmp-long v6, v12, v14

    if-ltz v6, :cond_b

    const-wide/32 v14, 0x7ffffff7

    cmp-long v6, v12, v14

    if-lez v6, :cond_8

    goto :goto_0

    :cond_8
    const-wide/16 v14, 0x8

    add-long/2addr v14, v12

    sub-long/2addr v10, v14

    const-wide/16 v17, 0x0

    cmp-long v6, v10, v17

    if-gez v6, :cond_9

    goto :goto_0

    :cond_9
    long-to-int v6, v14

    .line 87
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 88
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {v2, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 90
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v14

    invoke-virtual {v2, v8, v9, v14}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 91
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    cmp-long v14, v8, v12

    if-eqz v14, :cond_a

    goto :goto_0

    .line 95
    :cond_a
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    goto :goto_1

    :cond_b
    :goto_0
    move-object/from16 v6, v16

    :goto_1
    if-eqz v6, :cond_15

    .line 96
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    .line 99
    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    add-int/lit8 v9, v8, -0x18

    move-object/from16 v12, v16

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 104
    :goto_2
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v13

    add-int/lit8 v14, v8, -0x20

    if-ge v13, v14, :cond_13

    .line 105
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    const-wide/16 v17, 0x4

    cmp-long v15, v13, v17

    if-ltz v15, :cond_13

    const-wide/32 v17, 0x7fffffff

    cmp-long v15, v13, v17

    if-lez v15, :cond_c

    goto :goto_4

    .line 109
    :cond_c
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v15

    sub-int v15, v9, v15

    int-to-long v3, v15

    cmp-long v15, v13, v3

    if-lez v15, :cond_d

    goto :goto_4

    .line 112
    :cond_d
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v3

    long-to-int v4, v13

    add-int/2addr v3, v4

    .line 114
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    const v14, 0x7109871a

    if-ne v13, v14, :cond_e

    const/4 v10, 0x1

    goto :goto_3

    :cond_e
    const v14, -0xfac9740

    if-ne v13, v14, :cond_f

    const/4 v11, 0x1

    goto :goto_3

    :cond_f
    const v14, 0x71717874

    if-ne v13, v14, :cond_10

    add-int/lit8 v4, v4, -0x4

    .line 122
    new-array v12, v4, [B

    .line 123
    invoke-virtual {v6, v12, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_10
    :goto_3
    if-nez v10, :cond_11

    if-eqz v11, :cond_12

    :cond_11
    if-eqz v12, :cond_12

    goto :goto_4

    .line 128
    :cond_12
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v3, 0x16

    const/4 v4, 0x1

    goto :goto_2

    :cond_13
    :goto_4
    if-nez v10, :cond_14

    if-eqz v11, :cond_15

    :cond_14
    move-object/from16 v16, v12

    :cond_15
    if-nez v16, :cond_16

    .line 129
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    .line 130
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    and-int/2addr v3, v7

    if-lez v3, :cond_16

    .line 131
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    add-int/2addr v6, v4

    if-ge v3, v6, :cond_16

    .line 132
    new-array v4, v3, [B

    .line 133
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v6

    const/16 v7, 0x16

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    invoke-virtual {v0, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_16
    move-object/from16 v4, v16

    :goto_5
    const/4 v0, 0x1

    .line 137
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/tencent/qimei/ad/b;->a([Ljava/io/Closeable;)V

    if-eqz v4, :cond_19

    .line 138
    array-length v0, v4

    const/4 v2, 0x4

    if-le v0, v2, :cond_19

    .line 142
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 143
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 144
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    const/16 v5, -0x6906

    if-eq v3, v5, :cond_17

    goto :goto_6

    .line 148
    :cond_17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    if-ltz v3, :cond_19

    .line 149
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-le v3, v0, :cond_18

    goto :goto_6

    .line 152
    :cond_18
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 153
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const-string v2, "UTF-8"

    invoke-direct {v1, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 154
    const-string v1, "channelId"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_19
    :goto_6
    return-object v1
.end method
