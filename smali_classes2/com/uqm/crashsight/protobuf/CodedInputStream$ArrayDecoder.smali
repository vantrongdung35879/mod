.class final Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;
.super Lcom/uqm/crashsight/protobuf/CodedInputStream;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayDecoder"
.end annotation


# instance fields
.field private final e:[B

.field private final f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 608
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;-><init>(B)V

    const v0, 0x7fffffff

    .line 606
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->l:I

    .line 609
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->e:[B

    add-int/2addr p3, p2

    .line 610
    iput p3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    .line 611
    iput p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    .line 612
    iput p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->j:I

    .line 613
    iput-boolean p4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->f:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZB)V
    .locals 0

    .line 595
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;-><init>([BIIZ)V

    return-void
.end method

.method private A()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1064
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    .line 1066
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    if-eq v1, v0, :cond_9

    .line 1070
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->e:[B

    add-int/lit8 v3, v0, 0x1

    .line 1073
    aget-byte v4, v2, v0

    if-ltz v4, :cond_0

    .line 1074
    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    int-to-long v0, v4

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-lt v1, v5, :cond_9

    add-int/lit8 v1, v0, 0x2

    .line 1078
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_1

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v4, v0, 0x3

    .line 1080
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_2

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move v1, v4

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v3, v0, 0x4

    .line 1082
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_3

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v10, v0

    move v1, v3

    move-wide v2, v10

    goto/16 :goto_2

    :cond_3
    int-to-long v4, v1

    add-int/lit8 v1, v0, 0x5

    .line 1084
    aget-byte v3, v2, v3

    int-to-long v6, v3

    const/16 v3, 0x1c

    shl-long/2addr v6, v3

    xor-long v3, v4, v6

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_4

    const-wide/32 v5, 0xfe03f80

    :goto_0
    xor-long v2, v3, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v0, 0x6

    .line 1086
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x23

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    const-wide v0, -0x7f01fc080L

    :goto_1
    xor-long v2, v3, v0

    move v1, v7

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v0, 0x7

    .line 1088
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x2a

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_6

    const-wide v5, 0x3f80fe03f80L

    goto :goto_0

    :cond_6
    add-int/lit8 v7, v0, 0x8

    .line 1090
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x31

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_7

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v0, 0x9

    .line 1100
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_8

    add-int/lit8 v0, v0, 0xa

    .line 1111
    aget-byte v1, v2, v1

    int-to-long v1, v1

    cmp-long v7, v1, v5

    if-ltz v7, :cond_9

    move v1, v0

    :cond_8
    move-wide v2, v3

    .line 1116
    :goto_2
    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    return-wide v2

    .line 1119
    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method private B()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1137
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    .line 1139
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->e:[B

    add-int/lit8 v2, v0, 0x4

    .line 1144
    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    .line 1145
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 1140
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private C()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1153
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    .line 1155
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->e:[B

    add-int/lit8 v3, v0, 0x8

    .line 1160
    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    .line 1161
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 1156
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private D()V
    .locals 3

    .line 1199
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    .line 1200
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->j:I

    sub-int v1, v0, v1

    .line 1201
    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->l:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 1203
    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->h:I

    sub-int/2addr v0, v1

    .line 1204
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1206
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->h:I

    return-void
.end method

.method private E()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1237
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    if-eq v0, v1, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->e:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    aget-byte v0, v1, v0

    return v0

    .line 1238
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private f(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1263
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p1

    .line 1265
    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 1270
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1272
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

    .line 618
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 619
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->k:I

    return v0

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->s()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->k:I

    .line 624
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->k:I

    return v0

    .line 627
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

    .line 882
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->s()I

    move-result v0

    .line 883
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->b:I

    if-ge v1, v2, :cond_0

    .line 886
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->c(I)I

    move-result v0

    .line 887
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    .line 888
    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 p2, 0x0

    .line 889
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a(I)V

    .line 890
    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    .line 891
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->d(I)V

    return-object p1

    .line 884
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

    .line 634
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->k:I

    if-ne v0, p1, :cond_0

    return-void

    .line 635
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

    .line 829
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->b:I

    if-ge v0, v1, :cond_0

    .line 832
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    .line 833
    invoke-interface {p2, p0, p3}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    .line 834
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a(I)V

    .line 835
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    return-void

    .line 830
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

    .line 866
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->s()I

    move-result v0

    .line 867
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->b:I

    if-ge v1, v2, :cond_0

    .line 870
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->c(I)I

    move-result v0

    .line 871
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    .line 872
    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    const/4 p1, 0x0

    .line 873
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a(I)V

    .line 874
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a:I

    .line 875
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->d(I)V

    return-void

    .line 868
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

    .line 747
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->C()J

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

    .line 646
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

    .line 664
    invoke-direct {p0, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->f(I)V

    return v2

    .line 667
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->h()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    return v1

    .line 2725
    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2726
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 659
    :cond_3
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result p1

    invoke-static {p1, v4}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    .line 658
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a(I)V

    return v2

    .line 654
    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->s()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->f(I)V

    return v2

    :cond_5
    const/16 p1, 0x8

    .line 651
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->f(I)V

    return v2

    .line 2024
    :cond_6
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_8

    :goto_0
    if-ge v1, v0, :cond_7

    .line 2033
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->e:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2037
    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->e()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    :goto_1
    if-ge v1, v0, :cond_a

    .line 2042
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->E()B

    move-result p1

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    return v2

    .line 2046
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

    .line 752
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->B()I

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

    .line 1186
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->z()I

    move-result v0

    add-int/2addr p1, v0

    .line 1187
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->l:I

    if-gt p1, v0, :cond_0

    .line 1191
    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->l:I

    .line 1193
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->D()V

    return v0

    .line 1189
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1184
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

    .line 757
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(I)V
    .locals 0

    .line 1212
    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->l:I

    .line 1213
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->D()V

    return-void
.end method

.method public final e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->A()J

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

    .line 767
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->s()I

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

    .line 772
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->C()J

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

    .line 777
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->B()I

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

    .line 782
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->A()J

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    .line 788
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 791
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->e:[B

    sget-object v4, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 792
    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 797
    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    .line 800
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 802
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    .line 808
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->e:[B

    invoke-static {v1, v2, v0}, Lcom/uqm/crashsight/protobuf/Utf8;->b([BII)Ljava/lang/String;

    move-result-object v1

    .line 810
    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 815
    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    .line 818
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 820
    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final l()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 897
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    .line 898
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 903
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->e:[B

    .line 904
    invoke-static {v1, v2, v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a([BII)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    .line 905
    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 909
    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0

    :cond_1
    if-lez v0, :cond_2

    .line 3245
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    add-int/2addr v0, v2

    .line 3247
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    .line 3248
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->e:[B

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_4

    if-nez v0, :cond_3

    .line 3253
    sget-object v0, Lcom/uqm/crashsight/protobuf/Internal;->c:[B

    .line 912
    :goto_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 3255
    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3258
    :cond_4
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

    .line 950
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->s()I

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

    .line 955
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->s()I

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

    .line 960
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->B()I

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

    .line 965
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->C()J

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

    .line 970
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->s()I

    move-result v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->e(I)I

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

    .line 975
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->A()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 985
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    .line 987
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    if-eq v1, v0, :cond_6

    .line 991
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->e:[B

    add-int/lit8 v3, v0, 0x1

    .line 993
    aget-byte v4, v2, v0

    if-ltz v4, :cond_0

    .line 994
    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    return v4

    :cond_0
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-lt v1, v5, :cond_6

    add-int/lit8 v1, v0, 0x2

    .line 998
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_1

    xor-int/lit8 v0, v3, -0x80

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v0, 0x3

    .line 1000
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_2

    xor-int/lit16 v0, v1, 0x3f80

    :goto_0
    move v1, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v0, 0x4

    .line 1002
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_3

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v0, 0x5

    .line 1005
    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v3, :cond_5

    add-int/lit8 v3, v0, 0x6

    .line 1008
    aget-byte v4, v2, v4

    if-gez v4, :cond_4

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_4

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-ltz v2, :cond_6

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0

    .line 1017
    :goto_2
    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    return v0

    .line 1020
    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->t()J

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

    .line 1126
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->E()B

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

    .line 1132
    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->e()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final x()I
    .locals 2

    .line 1218
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->l:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1222
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->z()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final y()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()I
    .locals 2

    .line 1232
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->i:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->j:I

    sub-int/2addr v0, v1

    return v0
.end method
