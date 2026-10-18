.class final Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;
.super Lcom/uqm/crashsight/protobuf/CodedInputStream;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IterableDirectByteBufferDecoder"
.end annotation


# instance fields
.field private e:Ljava/nio/ByteBuffer;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:J

.field private m:J

.field private n:J


# direct methods
.method private A()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3161
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    throw v0
.end method

.method private B()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3610
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    .line 3612
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->n:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_9

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 3618
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    if-ltz v6, :cond_0

    .line 3619
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    int-to-long v0, v6

    return-wide v0

    .line 3621
    :cond_0
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->n:J

    iget-wide v7, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    sub-long/2addr v2, v7

    const-wide/16 v7, 0xa

    cmp-long v9, v2, v7

    if-ltz v9, :cond_9

    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    .line 3623
    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v4

    shl-int/lit8 v4, v4, 0x7

    xor-int/2addr v4, v6

    if-gez v4, :cond_1

    xor-int/lit8 v0, v4, -0x80

    int-to-long v0, v0

    goto/16 :goto_3

    :cond_1
    const-wide/16 v5, 0x3

    add-long/2addr v5, v0

    .line 3625
    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v2

    shl-int/lit8 v2, v2, 0xe

    xor-int/2addr v2, v4

    if-ltz v2, :cond_2

    xor-int/lit16 v0, v2, 0x3f80

    int-to-long v0, v0

    move-wide v2, v5

    goto/16 :goto_3

    :cond_2
    const-wide/16 v3, 0x4

    add-long/2addr v3, v0

    .line 3627
    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    shl-int/lit8 v5, v5, 0x15

    xor-int/2addr v2, v5

    if-gez v2, :cond_3

    const v0, -0x1fc080

    xor-int/2addr v0, v2

    int-to-long v0, v0

    move-wide v2, v3

    goto/16 :goto_3

    :cond_3
    int-to-long v5, v2

    const-wide/16 v9, 0x5

    add-long/2addr v9, v0

    .line 3629
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x1c

    shl-long/2addr v2, v4

    xor-long/2addr v2, v5

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_4

    const-wide/32 v0, 0xfe03f80

    :goto_0
    xor-long/2addr v0, v2

    :goto_1
    move-wide v2, v9

    goto/16 :goto_3

    :cond_4
    const-wide/16 v11, 0x6

    add-long/2addr v11, v0

    .line 3631
    invoke-static {v9, v10}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v9, v6

    const/16 v6, 0x23

    shl-long/2addr v9, v6

    xor-long/2addr v2, v9

    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    const-wide v0, -0x7f01fc080L

    :goto_2
    xor-long/2addr v0, v2

    move-wide v2, v11

    goto :goto_3

    :cond_5
    const-wide/16 v9, 0x7

    add-long/2addr v9, v0

    .line 3633
    invoke-static {v11, v12}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v11, v6

    const/16 v6, 0x2a

    shl-long/2addr v11, v6

    xor-long/2addr v2, v11

    cmp-long v6, v2, v4

    if-ltz v6, :cond_6

    const-wide v0, 0x3f80fe03f80L

    goto :goto_0

    :cond_6
    const-wide/16 v11, 0x8

    add-long/2addr v11, v0

    .line 3635
    invoke-static {v9, v10}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v9, v6

    const/16 v6, 0x31

    shl-long/2addr v9, v6

    xor-long/2addr v2, v9

    cmp-long v6, v2, v4

    if-gez v6, :cond_7

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_2

    :cond_7
    const-wide/16 v9, 0x9

    add-long/2addr v9, v0

    .line 3645
    invoke-static {v11, v12}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v11, v6

    const/16 v6, 0x38

    shl-long/2addr v11, v6

    xor-long/2addr v2, v11

    const-wide v11, 0xfe03f80fe03f80L

    xor-long/2addr v2, v11

    cmp-long v6, v2, v4

    if-gez v6, :cond_8

    add-long/2addr v0, v7

    .line 3656
    invoke-static {v9, v10}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v6, v4

    if-ltz v8, :cond_9

    move-wide v13, v0

    move-wide v0, v2

    move-wide v2, v13

    goto :goto_3

    :cond_8
    move-wide v0, v2

    goto :goto_1

    .line 3661
    :goto_3
    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    return-wide v0

    .line 3664
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method private C()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3682
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 3683
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    add-long/2addr v2, v0

    .line 3684
    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    .line 3685
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    .line 3686
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    .line 3687
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    .line 3688
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 3690
    :cond_0
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3691
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3692
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 3693
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private D()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3698
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->H()J

    move-result-wide v0

    const/16 v2, 0x38

    const/16 v3, 0x30

    const/16 v4, 0x28

    const/16 v5, 0x20

    const/16 v6, 0x18

    const/16 v7, 0x10

    const/16 v8, 0x8

    const-wide/16 v9, 0xff

    const-wide/16 v11, 0x8

    cmp-long v13, v0, v11

    if-ltz v13, :cond_0

    .line 3699
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    add-long/2addr v11, v0

    .line 3700
    iput-wide v11, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    .line 3701
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v11

    int-to-long v11, v11

    and-long/2addr v11, v9

    const-wide/16 v13, 0x1

    add-long/2addr v13, v0

    .line 3702
    invoke-static {v13, v14}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v13

    int-to-long v13, v13

    and-long/2addr v13, v9

    shl-long/2addr v13, v8

    or-long/2addr v11, v13

    const-wide/16 v13, 0x2

    add-long/2addr v13, v0

    .line 3703
    invoke-static {v13, v14}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v8

    int-to-long v13, v8

    and-long/2addr v13, v9

    shl-long v7, v13, v7

    or-long/2addr v7, v11

    const-wide/16 v11, 0x3

    add-long/2addr v11, v0

    .line 3704
    invoke-static {v11, v12}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v11

    int-to-long v11, v11

    and-long/2addr v11, v9

    shl-long/2addr v11, v6

    or-long v6, v7, v11

    const-wide/16 v11, 0x4

    add-long/2addr v11, v0

    .line 3705
    invoke-static {v11, v12}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v8

    int-to-long v11, v8

    and-long/2addr v11, v9

    shl-long/2addr v11, v5

    or-long v5, v6, v11

    const-wide/16 v7, 0x5

    add-long/2addr v7, v0

    .line 3706
    invoke-static {v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v9

    shl-long/2addr v7, v4

    or-long v4, v5, v7

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    .line 3707
    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    const-wide/16 v5, 0x7

    add-long/2addr v0, v5

    .line 3708
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v9

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0

    .line 3710
    :cond_0
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v9

    .line 3711
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result v11

    int-to-long v11, v11

    and-long/2addr v11, v9

    shl-long/2addr v11, v8

    or-long/2addr v0, v11

    .line 3712
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result v8

    int-to-long v11, v8

    and-long/2addr v11, v9

    shl-long v7, v11, v7

    or-long/2addr v0, v7

    .line 3713
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v9

    shl-long v6, v7, v6

    or-long/2addr v0, v6

    .line 3714
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v9

    shl-long v5, v6, v5

    or-long/2addr v0, v5

    .line 3715
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v9

    shl-long v4, v5, v4

    or-long/2addr v0, v4

    .line 3716
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v9

    shl-long v3, v4, v3

    or-long/2addr v0, v3

    .line 3717
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v9

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private E()V
    .locals 2

    .line 3748
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f:I

    .line 3750
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->h:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    .line 3752
    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->g:I

    sub-int/2addr v0, v1

    .line 3753
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3755
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->g:I

    return-void
.end method

.method private F()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3787
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3788
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    .line 3790
    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    return v0
.end method

.method private G()I
    .locals 4

    .line 3896
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->j:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private H()J
    .locals 4

    .line 3906
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->n:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private b([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_2

    .line 3829
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->G()I

    move-result p2

    if-gt p3, p2, :cond_2

    move p2, p3

    :goto_0
    if-lez p2, :cond_1

    .line 3832
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3833
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    .line 3835
    :cond_0
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->H()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3836
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    sub-int v3, p3, p2

    int-to-long v4, v3

    int-to-long v8, v0

    move-object v3, p1

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J[BJJ)V

    sub-int/2addr p2, v0

    .line 3838
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-gtz p3, :cond_4

    if-nez p3, :cond_3

    return-void

    .line 3847
    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3850
    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private f(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    int-to-long v0, p1

    .line 3855
    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->j:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    :goto_0
    if-lez p1, :cond_1

    .line 3864
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3865
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    .line 3867
    :cond_0
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->H()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    .line 3869
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-gez p1, :cond_3

    .line 3875
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3877
    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3181
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3182
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->i:I

    return v0

    .line 3186
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->i:I

    .line 3187
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3192
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->i:I

    return v0

    .line 3190
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/uqm/crashsight/protobuf/MessageLite;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "TT;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3456
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    .line 3457
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b:I

    if-ge v1, v2, :cond_0

    .line 3460
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->c(I)I

    move-result v0

    .line 3461
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    .line 3462
    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 p2, 0x0

    .line 3463
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a(I)V

    .line 3464
    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    .line 3465
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->d(I)V

    return-object p1

    .line 3458
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->i()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3197
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->i:I

    if-ne v0, p1, :cond_0

    return-void

    .line 3198
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final a(ILcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3403
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b:I

    if-ge v0, v1, :cond_0

    .line 3406
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    .line 3407
    invoke-interface {p2, p0, p3}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    .line 3408
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a(I)V

    .line 3409
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    return-void

    .line 3404
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->i()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3440
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    .line 3441
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b:I

    if-ge v1, v2, :cond_0

    .line 3444
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->c(I)I

    move-result v0

    .line 3445
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    .line 3446
    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    const/4 p1, 0x0

    .line 3447
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a(I)V

    .line 3448
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    .line 3449
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->d(I)V

    return-void

    .line 3442
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->i()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final b()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3309
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->D()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3209
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    .line 3227
    invoke-direct {p0, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f(I)V

    return v2

    .line 3230
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->h()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    return v1

    .line 5288
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a()I

    move-result v0

    if-eqz v0, :cond_3

    .line 5289
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3222
    :cond_3
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result p1

    invoke-static {p1, v4}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    .line 3221
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a(I)V

    return v2

    .line 3217
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f(I)V

    return v2

    :cond_5
    const/16 p1, 0x8

    .line 3214
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f(I)V

    return v2

    :cond_6
    :goto_0
    const/16 p1, 0xa

    if-ge v1, p1, :cond_8

    .line 4883
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result p1

    if-gez p1, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return v2

    .line 4887
    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->e()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final c()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3314
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->C()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 3735
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->z()I

    move-result v0

    add-int/2addr p1, v0

    .line 3736
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->h:I

    if-gt p1, v0, :cond_0

    .line 3740
    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->h:I

    .line 3742
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->E()V

    return v0

    .line 3738
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3733
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final d()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3319
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(I)V
    .locals 0

    .line 3761
    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->h:I

    .line 3762
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->E()V

    return-void
.end method

.method public final e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3324
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3329
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3334
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3339
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->C()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3344
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->B()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3349
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v8, v0

    .line 3350
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->n:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    sub-long/2addr v1, v3

    cmp-long v5, v8, v1

    if-gtz v5, :cond_0

    .line 3351
    new-array v0, v0, [B

    const-wide/16 v5, 0x0

    move-wide v1, v3

    move-object v3, v0

    move-wide v4, v5

    move-wide v6, v8

    .line 3352
    invoke-static/range {v1 .. v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J[BJJ)V

    .line 3353
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3354
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    return-object v1

    :cond_0
    if-lez v0, :cond_1

    .line 3356
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->G()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 3358
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3359
    invoke-direct {p0, v1, v2, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b([BII)V

    .line 3360
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 3365
    const-string v0, ""

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    .line 3368
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3370
    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3375
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v1, v0

    .line 3376
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->n:J

    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    sub-long/2addr v3, v5

    cmp-long v7, v1, v3

    if-gtz v7, :cond_0

    .line 3377
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v5, v3

    long-to-int v3, v5

    .line 3378
    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->e:Ljava/nio/ByteBuffer;

    invoke-static {v4, v3, v0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    .line 3379
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    return-object v0

    :cond_0
    if-ltz v0, :cond_1

    .line 3382
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->G()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 3383
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3384
    invoke-direct {p0, v1, v2, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b([BII)V

    .line 3385
    invoke-static {v1, v2, v0}, Lcom/uqm/crashsight/protobuf/Utf8;->b([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 3389
    const-string v0, ""

    return-object v0

    :cond_2
    if-gtz v0, :cond_3

    .line 3392
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3394
    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final l()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3471
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v8, v0

    .line 3472
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->n:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    sub-long/2addr v1, v3

    cmp-long v5, v8, v1

    if-gtz v5, :cond_0

    .line 3480
    new-array v0, v0, [B

    const-wide/16 v5, 0x0

    move-wide v1, v3

    move-object v3, v0

    move-wide v4, v5

    move-wide v6, v8

    .line 3481
    invoke-static/range {v1 .. v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J[BJJ)V

    .line 3482
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    add-long/2addr v1, v8

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    .line 3483
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v0, :cond_1

    .line 3485
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->G()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 3486
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3487
    invoke-direct {p0, v1, v2, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b([BII)V

    .line 3488
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->b([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 3492
    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    .line 3495
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3497
    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final m()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3537
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3542
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3547
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->C()I

    move-result v0

    return v0
.end method

.method public final p()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3552
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3557
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->e(I)I

    move-result v0

    return v0
.end method

.method public final r()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3562
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3569
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    .line 3571
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->n:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_6

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 3576
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    if-ltz v6, :cond_0

    .line 3577
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    return v6

    .line 3579
    :cond_0
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->n:J

    iget-wide v7, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    sub-long/2addr v2, v7

    const-wide/16 v7, 0xa

    cmp-long v9, v2, v7

    if-ltz v9, :cond_6

    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    .line 3581
    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v4

    shl-int/lit8 v4, v4, 0x7

    xor-int/2addr v4, v6

    if-gez v4, :cond_1

    xor-int/lit8 v0, v4, -0x80

    goto/16 :goto_2

    :cond_1
    const-wide/16 v5, 0x3

    add-long/2addr v5, v0

    .line 3583
    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v2

    shl-int/lit8 v2, v2, 0xe

    xor-int/2addr v2, v4

    if-ltz v2, :cond_2

    xor-int/lit16 v0, v2, 0x3f80

    :goto_0
    move-wide v2, v5

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x4

    add-long/2addr v3, v0

    .line 3585
    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    shl-int/lit8 v5, v5, 0x15

    xor-int/2addr v2, v5

    if-gez v2, :cond_3

    const v0, -0x1fc080

    xor-int/2addr v0, v2

    :goto_1
    move-wide v2, v3

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x5

    add-long/2addr v5, v0

    .line 3588
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    shl-int/lit8 v4, v3, 0x1c

    xor-int/2addr v2, v4

    const v4, 0xfe03f80

    xor-int/2addr v2, v4

    if-gez v3, :cond_5

    const-wide/16 v3, 0x6

    add-long/2addr v3, v0

    .line 3592
    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    if-gez v5, :cond_4

    const-wide/16 v5, 0x7

    add-long/2addr v5, v0

    .line 3593
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    if-gez v3, :cond_5

    const-wide/16 v3, 0x8

    add-long/2addr v3, v0

    .line 3594
    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    if-gez v5, :cond_4

    const-wide/16 v5, 0x9

    add-long/2addr v5, v0

    .line 3595
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    if-gez v3, :cond_5

    add-long/2addr v0, v7

    .line 3596
    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    if-ltz v3, :cond_6

    move-wide v10, v0

    move v0, v2

    move-wide v2, v10

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0

    .line 3600
    :goto_2
    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    return v0

    .line 3603
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->t()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method final t()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 3671
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->F()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 3677
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->e()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final x()I
    .locals 2

    .line 3767
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3771
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->z()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final y()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3776
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->j:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()I
    .locals 4

    .line 3781
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->j:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method
