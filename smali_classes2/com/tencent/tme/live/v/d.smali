.class public Lcom/tencent/tme/live/v/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/v/d$c;,
        Lcom/tencent/tme/live/v/d$b;,
        Lcom/tencent/tme/live/v/d$a;
    }
.end annotation


# direct methods
.method public static a([BI)[B
    .locals 14

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x4

    .line 1
    div-int/2addr v1, v2

    new-array v3, v1, [B

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/tencent/tme/live/v/d$b;->a:[I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tencent/tme/live/v/d$b;->b:[I

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x3

    if-ge v5, v0, :cond_11

    if-nez v6, :cond_2

    :goto_2
    add-int/lit8 v12, v5, 0x4

    if-gt v12, v0, :cond_1

    .line 3
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    aget v7, p1, v7

    shl-int/lit8 v7, v7, 0x12

    add-int/lit8 v13, v5, 0x1

    aget-byte v13, p0, v13

    and-int/lit16 v13, v13, 0xff

    aget v13, p1, v13

    shl-int/lit8 v13, v13, 0xc

    or-int/2addr v7, v13

    add-int/lit8 v13, v5, 0x2

    aget-byte v13, p0, v13

    and-int/lit16 v13, v13, 0xff

    aget v13, p1, v13

    shl-int/lit8 v13, v13, 0x6

    or-int/2addr v7, v13

    add-int/lit8 v13, v5, 0x3

    aget-byte v13, p0, v13

    and-int/lit16 v13, v13, 0xff

    aget v13, p1, v13

    or-int/2addr v7, v13

    if-ltz v7, :cond_1

    add-int/lit8 v5, v8, 0x2

    int-to-byte v13, v7

    aput-byte v13, v3, v5

    add-int/lit8 v5, v8, 0x1

    shr-int/lit8 v13, v7, 0x8

    int-to-byte v13, v13

    aput-byte v13, v3, v5

    shr-int/lit8 v5, v7, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v8

    add-int/lit8 v8, v8, 0x3

    move v5, v12

    goto :goto_2

    :cond_1
    if-lt v5, v0, :cond_2

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v12, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    aget v5, p1, v5

    const/4 v13, -0x1

    if-eqz v6, :cond_e

    if-eq v6, v10, :cond_c

    const/4 v10, -0x2

    if-eq v6, v9, :cond_9

    const/4 v9, 0x5

    if-eq v6, v11, :cond_6

    if-eq v6, v2, :cond_4

    if-eq v6, v9, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eq v5, v13, :cond_10

    goto/16 :goto_7

    :cond_4
    if-ne v5, v10, :cond_5

    goto :goto_4

    :cond_5
    if-eq v5, v13, :cond_10

    goto/16 :goto_7

    :cond_6
    if-ltz v5, :cond_7

    shl-int/lit8 v6, v7, 0x6

    or-int v7, v6, v5

    add-int/lit8 v5, v8, 0x2

    int-to-byte v6, v7

    aput-byte v6, v3, v5

    add-int/lit8 v5, v8, 0x1

    shr-int/lit8 v6, v7, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    shr-int/lit8 v5, v7, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v8

    add-int/lit8 v8, v8, 0x3

    move v5, v12

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_7
    if-ne v5, v10, :cond_8

    add-int/lit8 v5, v8, 0x1

    shr-int/lit8 v6, v7, 0x2

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    shr-int/lit8 v5, v7, 0xa

    int-to-byte v5, v5

    aput-byte v5, v3, v8

    add-int/lit8 v8, v8, 0x2

    move v5, v12

    const/4 v6, 0x5

    goto/16 :goto_1

    :cond_8
    if-eq v5, v13, :cond_10

    goto :goto_7

    :cond_9
    if-ltz v5, :cond_a

    goto :goto_3

    :cond_a
    if-ne v5, v10, :cond_b

    add-int/lit8 v5, v8, 0x1

    shr-int/lit8 v6, v7, 0x4

    int-to-byte v6, v6

    aput-byte v6, v3, v8

    move v8, v5

    move v5, v12

    const/4 v6, 0x4

    goto/16 :goto_1

    :cond_b
    if-eq v5, v13, :cond_10

    goto :goto_7

    :cond_c
    if-ltz v5, :cond_d

    :goto_3
    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v7, v5

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_d
    if-eq v5, v13, :cond_10

    goto :goto_7

    :cond_e
    if-ltz v5, :cond_f

    add-int/lit8 v6, v6, 0x1

    move v7, v5

    goto :goto_5

    :cond_f
    if-eq v5, v13, :cond_10

    goto :goto_7

    :cond_10
    :goto_5
    move v5, v12

    goto/16 :goto_1

    :cond_11
    :goto_6
    if-eq v6, v10, :cond_14

    if-eq v6, v9, :cond_13

    if-eq v6, v11, :cond_12

    if-eq v6, v2, :cond_14

    goto :goto_8

    :cond_12
    add-int/lit8 p0, v8, 0x1

    shr-int/lit8 p1, v7, 0xa

    int-to-byte p1, p1

    aput-byte p1, v3, v8

    add-int/lit8 v8, v8, 0x2

    shr-int/lit8 p1, v7, 0x2

    int-to-byte p1, p1

    aput-byte p1, v3, p0

    goto :goto_8

    :cond_13
    add-int/lit8 p0, v8, 0x1

    shr-int/lit8 p1, v7, 0x4

    int-to-byte p1, p1

    aput-byte p1, v3, v8

    move v8, p0

    goto :goto_8

    :cond_14
    :goto_7
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_16

    if-ne v8, v1, :cond_15

    goto :goto_9

    .line 4
    :cond_15
    new-array p0, v8, [B

    invoke-static {v3, v4, p0, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, p0

    :goto_9
    return-object v3

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad base-64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BI)[B
    .locals 17

    move-object/from16 v0, p0

    array-length v1, v0

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v7, p1, 0x8

    if-nez v7, :cond_3

    .line 1
    sget-object v7, Lcom/tencent/tme/live/v/d$c;->a:[B

    goto :goto_3

    :cond_3
    sget-object v7, Lcom/tencent/tme/live/v/d$c;->b:[B

    :goto_3
    if-eqz v5, :cond_4

    const/16 v9, 0x13

    goto :goto_4

    :cond_4
    const/4 v9, -0x1

    .line 2
    :goto_4
    div-int/lit8 v10, v1, 0x3

    mul-int/lit8 v10, v10, 0x4

    const/4 v11, 0x2

    rem-int/lit8 v12, v1, 0x3

    if-eqz v2, :cond_5

    if-lez v12, :cond_8

    add-int/lit8 v10, v10, 0x4

    goto :goto_5

    :cond_5
    if-eq v12, v4, :cond_7

    if-eq v12, v11, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v10, v10, 0x3

    goto :goto_5

    :cond_7
    add-int/lit8 v10, v10, 0x2

    :cond_8
    :goto_5
    if-eqz v5, :cond_a

    if-lez v1, :cond_a

    add-int/lit8 v12, v1, -0x1

    div-int/lit8 v12, v12, 0x39

    add-int/2addr v12, v4

    if-eqz v6, :cond_9

    const/4 v4, 0x2

    :cond_9
    mul-int v12, v12, v4

    add-int/2addr v10, v12

    :cond_a
    new-array v4, v10, [B

    move v10, v9

    const/4 v9, 0x0

    :goto_6
    add-int/lit8 v12, v3, 0x3

    const/16 v13, 0xd

    const/16 v14, 0xa

    if-gt v12, v1, :cond_d

    .line 3
    aget-byte v15, v0, v3

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, v3, 0x1

    aget-byte v8, v0, v16

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v15

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v8

    shr-int/lit8 v8, v3, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, v4, v9

    add-int/lit8 v8, v9, 0x1

    shr-int/lit8 v15, v3, 0xc

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v7, v15

    aput-byte v15, v4, v8

    add-int/lit8 v8, v9, 0x2

    shr-int/lit8 v15, v3, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v7, v15

    aput-byte v15, v4, v8

    add-int/lit8 v8, v9, 0x3

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v7, v3

    aput-byte v3, v4, v8

    add-int/lit8 v3, v9, 0x4

    add-int/lit8 v10, v10, -0x1

    if-nez v10, :cond_c

    if-eqz v6, :cond_b

    add-int/lit8 v9, v9, 0x5

    aput-byte v13, v4, v3

    move v3, v9

    :cond_b
    add-int/lit8 v9, v3, 0x1

    aput-byte v14, v4, v3

    move v3, v12

    const/16 v10, 0x13

    goto :goto_6

    :cond_c
    move v9, v3

    move v3, v12

    goto :goto_6

    :cond_d
    add-int/lit8 v8, v1, -0x1

    const/16 v12, 0x3d

    if-ne v3, v8, :cond_10

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v7, v3

    aput-byte v3, v4, v9

    add-int/lit8 v3, v9, 0x2

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v4, v1

    if-eqz v2, :cond_e

    add-int/lit8 v0, v9, 0x3

    aput-byte v12, v4, v3

    add-int/lit8 v3, v9, 0x4

    aput-byte v12, v4, v0

    :cond_e
    if-eqz v5, :cond_15

    if-eqz v6, :cond_f

    add-int/lit8 v0, v3, 0x1

    aput-byte v13, v4, v3

    move v3, v0

    :cond_f
    aput-byte v14, v4, v3

    goto :goto_7

    :cond_10
    sub-int/2addr v1, v11

    if-ne v3, v1, :cond_13

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v14

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v11

    or-int/2addr v0, v3

    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v7, v3

    aput-byte v3, v4, v9

    add-int/lit8 v3, v9, 0x2

    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, v4, v1

    add-int/lit8 v1, v9, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v7, v0

    aput-byte v0, v4, v3

    if-eqz v2, :cond_11

    add-int/lit8 v9, v9, 0x4

    aput-byte v12, v4, v1

    move v1, v9

    :cond_11
    if-eqz v5, :cond_15

    if-eqz v6, :cond_12

    add-int/lit8 v0, v1, 0x1

    aput-byte v13, v4, v1

    move v1, v0

    :cond_12
    aput-byte v14, v4, v1

    goto :goto_7

    :cond_13
    if-eqz v5, :cond_15

    if-lez v9, :cond_15

    const/16 v0, 0x13

    if-eq v10, v0, :cond_15

    if-eqz v6, :cond_14

    add-int/lit8 v0, v9, 0x1

    aput-byte v13, v4, v9

    move v9, v0

    :cond_14
    aput-byte v14, v4, v9

    :cond_15
    :goto_7
    return-object v4
.end method
