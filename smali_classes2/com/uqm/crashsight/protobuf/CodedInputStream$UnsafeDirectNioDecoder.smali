.class final Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;
.super Lcom/uqm/crashsight/protobuf/CodedInputStream;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectNioDecoder"
.end annotation


# instance fields
.field private final e:Ljava/nio/ByteBuffer;

.field private final f:Z

.field private final g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1321
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;-><init>(B)V

    const v0, 0x7fffffff

    .line 1315
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    .line 1322
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->e:Ljava/nio/ByteBuffer;

    .line 1323
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->g:J

    .line 1324
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    .line 1325
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    .line 1326
    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->j:J

    .line 1327
    iput-boolean p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;ZB)V
    .locals 0

    .line 1280
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method static A()Z
    .locals 1

    .line 1318
    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b()Z

    move-result v0

    return v0
.end method

.method private B()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1790
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    .line 1792
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_9

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 1798
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v4

    if-ltz v4, :cond_0

    .line 1799
    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    int-to-long v0, v4

    return-wide v0

    .line 1801
    :cond_0
    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    sub-long/2addr v5, v2

    const-wide/16 v7, 0x9

    cmp-long v9, v5, v7

    if-ltz v9, :cond_9

    const-wide/16 v5, 0x2

    add-long/2addr v5, v0

    .line 1803
    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_1

    xor-int/lit8 v0, v2, -0x80

    :goto_0
    int-to-long v0, v0

    goto/16 :goto_3

    :cond_1
    const-wide/16 v3, 0x3

    add-long/2addr v3, v0

    .line 1805
    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    shl-int/lit8 v5, v5, 0xe

    xor-int/2addr v2, v5

    if-ltz v2, :cond_2

    xor-int/lit16 v0, v2, 0x3f80

    int-to-long v0, v0

    move-wide v5, v3

    goto/16 :goto_3

    :cond_2
    const-wide/16 v5, 0x4

    add-long/2addr v5, v0

    .line 1807
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v2, v3

    if-gez v2, :cond_3

    const v0, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_3
    int-to-long v2, v2

    const-wide/16 v9, 0x5

    add-long/2addr v9, v0

    .line 1809
    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x1c

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_4

    const-wide/32 v0, 0xfe03f80

    :goto_1
    xor-long/2addr v0, v2

    move-wide v5, v9

    goto/16 :goto_3

    :cond_4
    const-wide/16 v11, 0x6

    add-long/2addr v11, v0

    .line 1811
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

    move-wide v5, v11

    goto :goto_3

    :cond_5
    const-wide/16 v9, 0x7

    add-long/2addr v9, v0

    .line 1813
    invoke-static {v11, v12}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v11, v6

    const/16 v6, 0x2a

    shl-long/2addr v11, v6

    xor-long/2addr v2, v11

    cmp-long v6, v2, v4

    if-ltz v6, :cond_6

    const-wide v0, 0x3f80fe03f80L

    goto :goto_1

    :cond_6
    const-wide/16 v11, 0x8

    add-long/2addr v11, v0

    .line 1815
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
    add-long v6, v0, v7

    .line 1825
    invoke-static {v11, v12}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v2, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v2, v8

    cmp-long v8, v2, v4

    if-gez v8, :cond_8

    const-wide/16 v8, 0xa

    add-long/2addr v0, v8

    .line 1836
    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v6, v4

    if-ltz v8, :cond_9

    move-wide v5, v0

    move-wide v0, v2

    goto :goto_3

    :cond_8
    move-wide v0, v2

    move-wide v5, v6

    .line 1841
    :goto_3
    iput-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    return-wide v0

    .line 1844
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method private C()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1862
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    .line 1864
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    add-long/2addr v4, v0

    .line 1868
    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    .line 1869
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    .line 1870
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    .line 1871
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    .line 1872
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 1865
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private D()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1877
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    .line 1879
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    add-long/2addr v4, v0

    .line 1883
    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    .line 1884
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    .line 1885
    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    .line 1886
    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    .line 1887
    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    .line 1888
    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    .line 1889
    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    .line 1890
    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v0, v6

    .line 1891
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 1880
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private E()B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1948
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 1951
    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    return v0

    .line 1949
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private F()V
    .locals 4

    .line 1989
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    .line 1990
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->j:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    .line 1991
    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    if-le v3, v2, :cond_0

    sub-int/2addr v3, v2

    .line 1993
    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->k:I

    int-to-long v2, v3

    sub-long/2addr v0, v2

    .line 1994
    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1996
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->k:I

    return-void
.end method

.method private G()I
    .locals 4

    .line 2001
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private f(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1976
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->G()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1978
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 1983
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1985
    :cond_1
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

    .line 1332
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1333
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->l:I

    return v0

    .line 1337
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->l:I

    .line 1338
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1343
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->l:I

    return v0

    .line 1341
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

    .line 1601
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    .line 1602
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->b:I

    if-ge v1, v2, :cond_0

    .line 1605
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->c(I)I

    move-result v0

    .line 1606
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    .line 1607
    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 p2, 0x0

    .line 1608
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a(I)V

    .line 1609
    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    .line 1610
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->d(I)V

    return-object p1

    .line 1603
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

    .line 1348
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->l:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1349
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

    .line 1548
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->b:I

    if-ge v0, v1, :cond_0

    .line 1551
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    .line 1552
    invoke-interface {p2, p0, p3}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    .line 1553
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a(I)V

    .line 1554
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    return-void

    .line 1549
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

    .line 1585
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    .line 1586
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->b:I

    if-ge v1, v2, :cond_0

    .line 1589
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->c(I)I

    move-result v0

    .line 1590
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    .line 1591
    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    const/4 p1, 0x0

    .line 1592
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a(I)V

    .line 1593
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    .line 1594
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->d(I)V

    return-void

    .line 1587
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

    .line 1461
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->D()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1360
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

    .line 1378
    invoke-direct {p0, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->f(I)V

    return v2

    .line 1381
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->h()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    return v1

    .line 3439
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3440
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1373
    :cond_3
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result p1

    invoke-static {p1, v4}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    .line 1372
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a(I)V

    return v2

    .line 1368
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->f(I)V

    return v2

    :cond_5
    const/16 p1, 0x8

    .line 1365
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->f(I)V

    return v2

    .line 2750
    :cond_6
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->G()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_8

    :goto_0
    if-ge v1, v0, :cond_7

    .line 2759
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result p1

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2763
    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->e()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    :goto_1
    if-ge v1, v0, :cond_a

    .line 2768
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->E()B

    move-result p1

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    return v2

    .line 2772
    :cond_a
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

    .line 1466
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->C()I

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

    .line 1909
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->z()I

    move-result v0

    add-int/2addr p1, v0

    .line 1910
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    if-gt p1, v0, :cond_0

    .line 1914
    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    .line 1916
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->F()V

    return v0

    .line 1912
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1907
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

    .line 1471
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(I)V
    .locals 0

    .line 1923
    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    .line 1924
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->F()V

    return-void
.end method

.method public final e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1476
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->B()J

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

    .line 1481
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

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

    .line 1486
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->D()J

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

    .line 1491
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->C()I

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

    .line 1496
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->B()J

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
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1501
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    .line 1502
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->G()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1507
    new-array v1, v0, [B

    .line 1508
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    int-to-long v9, v0

    const-wide/16 v5, 0x0

    move-object v4, v1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J[BJJ)V

    .line 1509
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1510
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 1515
    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 1518
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1520
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1525
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    .line 1526
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->G()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1527
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    .line 4005
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->g:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 1528
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->e:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2, v0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    .line 1529
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 1534
    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    .line 1537
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1539
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final l()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1616
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    .line 1617
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->G()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1624
    new-array v1, v0, [B

    .line 1625
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    int-to-long v9, v0

    const-wide/16 v5, 0x0

    move-object v4, v1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J[BJJ)V

    .line 1626
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    add-long/2addr v2, v9

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    .line 1627
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->b([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 1632
    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 1635
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1637
    :cond_2
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

    .line 1677
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

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

    .line 1682
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

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

    .line 1687
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->C()I

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

    .line 1692
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->D()J

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

    .line 1697
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->e(I)I

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

    .line 1702
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1712
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    .line 1714
    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_6

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 1719
    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v4

    if-ltz v4, :cond_0

    .line 1720
    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    return v4

    .line 1722
    :cond_0
    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    sub-long/2addr v5, v2

    const-wide/16 v7, 0x9

    cmp-long v9, v5, v7

    if-ltz v9, :cond_6

    const-wide/16 v5, 0x2

    add-long/2addr v5, v0

    .line 1724
    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_1

    xor-int/lit8 v0, v2, -0x80

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x3

    add-long/2addr v3, v0

    .line 1726
    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    shl-int/lit8 v5, v5, 0xe

    xor-int/2addr v2, v5

    if-ltz v2, :cond_2

    xor-int/lit16 v0, v2, 0x3f80

    :goto_0
    move-wide v5, v3

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x4

    add-long/2addr v5, v0

    .line 1728
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v2, v3

    if-gez v2, :cond_3

    const v0, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_1

    :cond_3
    const-wide/16 v3, 0x5

    add-long/2addr v3, v0

    .line 1731
    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    shl-int/lit8 v6, v5, 0x1c

    xor-int/2addr v2, v6

    const v6, 0xfe03f80

    xor-int/2addr v2, v6

    if-gez v5, :cond_5

    const-wide/16 v5, 0x6

    add-long/2addr v5, v0

    .line 1735
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    if-gez v3, :cond_4

    const-wide/16 v3, 0x7

    add-long/2addr v3, v0

    .line 1736
    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    if-gez v5, :cond_5

    const-wide/16 v5, 0x8

    add-long/2addr v5, v0

    .line 1737
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    if-gez v3, :cond_4

    add-long v3, v0, v7

    .line 1738
    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    if-gez v5, :cond_5

    const-wide/16 v5, 0xa

    add-long/2addr v5, v0

    .line 1739
    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    if-ltz v0, :cond_6

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0

    .line 1743
    :goto_1
    iput-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    return v0

    .line 1746
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->t()J

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

    .line 1851
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->E()B

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

    .line 1857
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->e()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final x()I
    .locals 2

    .line 1929
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1933
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->z()I

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

    .line 1938
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

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

    .line 1943
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->j:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method
