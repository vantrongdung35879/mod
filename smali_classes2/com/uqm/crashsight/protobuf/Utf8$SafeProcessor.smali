.class final Lcom/uqm/crashsight/protobuf/Utf8$SafeProcessor;
.super Lcom/uqm/crashsight/protobuf/Utf8$Processor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 860
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I[BII)I
    .locals 11

    const/16 v0, -0x13

    const/16 v1, -0x3e

    const/16 v2, -0x10

    const/4 v3, 0x0

    const/16 v4, -0x60

    const/16 v5, -0x20

    const/4 v6, -0x1

    const/16 v7, -0x41

    if-eqz p1, :cond_f

    if-lt p3, p4, :cond_0

    return p1

    :cond_0
    int-to-byte v8, p1

    if-ge v8, v5, :cond_3

    if-lt v8, v1, :cond_2

    add-int/lit8 p1, p3, 0x1

    .line 881
    aget-byte p3, p2, p3

    if-le p3, v7, :cond_1

    goto :goto_0

    :cond_1
    move p3, p1

    goto/16 :goto_2

    :cond_2
    :goto_0
    return v6

    :cond_3
    if-ge v8, v2, :cond_9

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_5

    add-int/lit8 p1, p3, 0x1

    .line 892
    aget-byte p3, p2, p3

    if-lt p1, p4, :cond_4

    .line 894
    invoke-static {v8, p3}, Lcom/uqm/crashsight/protobuf/Utf8;->a(II)I

    move-result p1

    return p1

    :cond_4
    move v10, p3

    move p3, p1

    move p1, v10

    :cond_5
    if-gt p1, v7, :cond_8

    if-ne v8, v5, :cond_6

    if-lt p1, v4, :cond_8

    :cond_6
    if-ne v8, v0, :cond_7

    if-ge p1, v4, :cond_8

    :cond_7
    add-int/lit8 p1, p3, 0x1

    .line 897
    aget-byte p3, p2, p3

    if-le p3, v7, :cond_1

    :cond_8
    return v6

    :cond_9
    shr-int/lit8 v9, p1, 0x8

    not-int v9, v9

    int-to-byte v9, v9

    if-nez v9, :cond_b

    add-int/lit8 p1, p3, 0x1

    .line 913
    aget-byte v9, p2, p3

    if-lt p1, p4, :cond_a

    .line 915
    invoke-static {v8, v9}, Lcom/uqm/crashsight/protobuf/Utf8;->a(II)I

    move-result p1

    return p1

    :cond_a
    move p3, p1

    const/4 p1, 0x0

    goto :goto_1

    :cond_b
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    :goto_1
    if-nez p1, :cond_d

    add-int/lit8 p1, p3, 0x1

    .line 921
    aget-byte p3, p2, p3

    if-lt p1, p4, :cond_c

    .line 923
    invoke-static {v8, v9, p3}, Lcom/uqm/crashsight/protobuf/Utf8;->a(III)I

    move-result p1

    return p1

    :cond_c
    move v10, p3

    move p3, p1

    move p1, v10

    :cond_d
    if-gt v9, v7, :cond_e

    shl-int/lit8 v8, v8, 0x1c

    add-int/lit8 v9, v9, 0x70

    add-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1e

    if-nez v8, :cond_e

    if-gt p1, v7, :cond_e

    add-int/lit8 p1, p3, 0x1

    .line 931
    aget-byte p3, p2, p3

    if-le p3, v7, :cond_1

    :cond_e
    return v6

    :cond_f
    :goto_2
    if-ge p3, p4, :cond_10

    .line 2098
    aget-byte p1, p2, p3

    if-ltz p1, :cond_10

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_10
    if-lt p3, p4, :cond_11

    return v3

    :cond_11
    :goto_3
    if-lt p3, p4, :cond_12

    return v3

    :cond_12
    add-int/lit8 p1, p3, 0x1

    .line 2115
    aget-byte v8, p2, p3

    if-gez v8, :cond_1d

    if-ge v8, v5, :cond_15

    if-lt p1, p4, :cond_13

    return v8

    :cond_13
    if-lt v8, v1, :cond_14

    add-int/lit8 p3, p3, 0x2

    .line 2127
    aget-byte p1, p2, p1

    if-le p1, v7, :cond_11

    :cond_14
    return v6

    :cond_15
    if-ge v8, v2, :cond_1a

    add-int/lit8 v9, p4, -0x1

    if-lt p1, v9, :cond_16

    .line 2134
    invoke-static {p2, p1, p4}, Lcom/uqm/crashsight/protobuf/Utf8;->c([BII)I

    move-result p1

    return p1

    :cond_16
    add-int/lit8 v9, p3, 0x2

    .line 2136
    aget-byte p1, p2, p1

    if-gt p1, v7, :cond_19

    if-ne v8, v5, :cond_17

    if-lt p1, v4, :cond_19

    :cond_17
    if-ne v8, v0, :cond_18

    if-ge p1, v4, :cond_19

    :cond_18
    add-int/lit8 p3, p3, 0x3

    aget-byte p1, p2, v9

    if-le p1, v7, :cond_11

    :cond_19
    return v6

    :cond_1a
    add-int/lit8 v9, p4, -0x2

    if-lt p1, v9, :cond_1b

    .line 2149
    invoke-static {p2, p1, p4}, Lcom/uqm/crashsight/protobuf/Utf8;->c([BII)I

    move-result p1

    return p1

    :cond_1b
    add-int/lit8 v9, p3, 0x2

    .line 2151
    aget-byte p1, p2, p1

    if-gt p1, v7, :cond_1c

    shl-int/lit8 v8, v8, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr v8, p1

    shr-int/lit8 p1, v8, 0x1e

    if-nez p1, :cond_1c

    add-int/lit8 p1, p3, 0x3

    aget-byte v8, p2, v9

    if-gt v8, v7, :cond_1c

    add-int/lit8 p3, p3, 0x4

    aget-byte p1, p2, p1

    if-le p1, v7, :cond_11

    :cond_1c
    return v6

    :cond_1d
    move p3, p1

    goto :goto_3
.end method

.method final a(Ljava/lang/CharSequence;[BII)I
    .locals 7

    .line 1039
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p4, p3

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v0, :cond_0

    add-int v3, v1, p3

    if-ge v3, p4, :cond_0

    .line 1045
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_0

    int-to-byte v2, v4

    .line 1046
    aput-byte v2, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    add-int/2addr p3, v0

    return p3

    :cond_1
    add-int/2addr p3, v1

    :goto_1
    if-ge v1, v0, :cond_b

    .line 1053
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_2

    if-ge p3, p4, :cond_2

    add-int/lit8 v4, p3, 0x1

    int-to-byte v3, v3

    .line 1055
    aput-byte v3, p2, p3

    move p3, v4

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0x800

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, p4, -0x2

    if-gt p3, v4, :cond_3

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 1057
    aput-byte v5, p2, p3

    add-int/lit8 p3, p3, 0x2

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 1058
    aput-byte v3, p2, v4

    goto :goto_2

    :cond_3
    const v4, 0xdfff

    const v5, 0xd800

    if-lt v3, v5, :cond_4

    if-ge v4, v3, :cond_5

    :cond_4
    add-int/lit8 v6, p4, -0x3

    if-gt p3, v6, :cond_5

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 1061
    aput-byte v5, p2, p3

    add-int/lit8 v5, p3, 0x2

    ushr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 1062
    aput-byte v6, p2, v4

    add-int/lit8 p3, p3, 0x3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 1063
    aput-byte v3, p2, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, p4, -0x4

    if-gt p3, v6, :cond_8

    add-int/lit8 v4, v1, 0x1

    .line 1068
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1071
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 1072
    aput-byte v5, p2, p3

    add-int/lit8 v5, p3, 0x2

    ushr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 1073
    aput-byte v6, p2, v3

    add-int/lit8 v3, p3, 0x3

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 1074
    aput-byte v6, p2, v5

    add-int/lit8 p3, p3, 0x4

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 1075
    aput-byte v1, p2, v3

    move v1, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    move v1, v4

    .line 1069
    :cond_7
    new-instance p1, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    :cond_8
    if-gt v5, v3, :cond_a

    if-gt v3, v4, :cond_a

    add-int/lit8 p2, v1, 0x1

    .line 1080
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_9

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1081
    :cond_9
    new-instance p1, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    .line 1083
    :cond_a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Failed writing "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p4, " at index "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return p3
.end method

.method final a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1034
    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/Utf8$SafeProcessor;->b(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1092
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/Utf8$SafeProcessor;->b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method final b(ILjava/nio/ByteBuffer;II)I
    .locals 0

    .line 952
    invoke-static {p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/Utf8$SafeProcessor;->c(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method final b([BII)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    or-int v0, p2, p3

    .line 958
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_9

    add-int v0, p2, p3

    .line 968
    new-array p3, p3, [C

    const/4 v2, 0x0

    :goto_0
    if-ge p2, v0, :cond_0

    .line 974
    aget-byte v3, p1, p2

    .line 975
    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v2, 0x1

    .line 979
    invoke-static {v3, p3, v2}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B[CI)V

    move v2, v4

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_1
    if-ge p2, v0, :cond_8

    add-int/lit8 v2, p2, 0x1

    .line 983
    aget-byte v3, p1, p2

    .line 984
    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 p2, v8, 0x1

    .line 985
    invoke-static {v3, p3, v8}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B[CI)V

    :goto_2
    if-ge v2, v0, :cond_1

    .line 989
    aget-byte v3, p1, v2

    .line 990
    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, p2, 0x1

    .line 994
    invoke-static {v3, p3, p2}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B[CI)V

    move p2, v4

    goto :goto_2

    :cond_1
    move v8, p2

    move p2, v2

    goto :goto_1

    .line 996
    :cond_2
    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->b(B)Z

    move-result v4

    if-eqz v4, :cond_4

    if-ge v2, v0, :cond_3

    add-int/lit8 p2, p2, 0x2

    .line 1000
    aget-byte v2, p1, v2

    add-int/lit8 v4, v8, 0x1

    invoke-static {v3, v2, p3, v8}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(BB[CI)V

    move v8, v4

    goto :goto_1

    .line 998
    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->l()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1001
    :cond_4
    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->c(B)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_5

    add-int/lit8 v4, p2, 0x2

    .line 1005
    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte v4, p1, v4

    add-int/lit8 v5, v8, 0x1

    invoke-static {v3, v2, v4, p3, v8}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(BBB[CI)V

    move v8, v5

    goto :goto_1

    .line 1003
    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->l()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    add-int/lit8 v4, v0, -0x2

    if-ge v2, v4, :cond_7

    add-int/lit8 v4, p2, 0x2

    .line 1015
    aget-byte v5, p1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v4, p1, v4

    add-int/lit8 p2, p2, 0x4

    aget-byte v6, p1, v2

    move v2, v3

    move v3, v5

    move v5, v6

    move-object v6, p3

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(BBBB[CI)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 1013
    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->l()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1027
    :cond_8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 959
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 960
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
