.class final Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;
.super Lcom/uqm/crashsight/protobuf/CodedOutputStream;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectNioEncoder"
.end annotation


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:Ljava/nio/ByteBuffer;

.field private final c:J

.field private final d:J

.field private final e:J

.field private f:J


# direct methods
.method private g(J)V
    .locals 3

    .line 2225
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    .line 7229
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr p1, v1

    long-to-int p2, p1

    .line 2225
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private j(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 1912
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(II)V

    .line 1913
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2013
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 2017
    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    invoke-static {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    return-void

    .line 2014
    :cond_0
    new-instance p1, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    .line 2015
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1901
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1924
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(II)V

    .line 1925
    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(J)V

    return-void
.end method

.method public final a(ILcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1948
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(II)V

    .line 1949
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method public final a(ILcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1973
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(II)V

    .line 1974
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1942
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(II)V

    .line 1943
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1936
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(II)V

    int-to-byte p1, p2

    .line 1937
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(B)V

    return-void
.end method

.method public final a(J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2089
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->e:J

    const/4 v4, 0x7

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x80

    const-wide/16 v9, 0x1

    cmp-long v11, v0, v2

    if-gtz v11, :cond_1

    :goto_0
    and-long v0, p1, v7

    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    .line 2093
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    add-long/2addr v9, v0

    iput-wide v9, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    return-void

    .line 2096
    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    add-long v2, v0, v9

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    ushr-long/2addr p1, v4

    goto :goto_0

    .line 2101
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    cmp-long v11, v0, v2

    if-gez v11, :cond_3

    and-long v2, p1, v7

    cmp-long v11, v2, v5

    if-nez v11, :cond_2

    add-long/2addr v9, v0

    .line 2103
    iput-wide v9, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    return-void

    :cond_2
    add-long v2, v0, v9

    .line 2106
    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    ushr-long/2addr p1, v4

    goto :goto_1

    .line 2110
    :cond_3
    new-instance p1, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    .line 2111
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    aput-object v0, v3, v1

    const/4 p2, 0x2

    aput-object v2, v3, p2

    const-string p2, "Pos: %d, limit: %d, len: %d"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2022
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    .line 2023
    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Lcom/uqm/crashsight/protobuf/ByteOutput;)V

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2001
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    .line 2002
    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2163
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    .line 2167
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    .line 2168
    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->h(I)I

    move-result v2

    .line 2169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->h(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 2173
    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    .line 5229
    iget-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v2, v3

    .line 2174
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2177
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 2180
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    .line 2181
    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    .line 2182
    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    return-void

    .line 2185
    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;)I

    move-result v2

    .line 2186
    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    .line 2189
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    invoke-direct {p0, v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->g(J)V

    .line 2190
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 2191
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2204
    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 2202
    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v2

    .line 2195
    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    .line 2196
    invoke-direct {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->g(J)V

    .line 2199
    invoke-virtual {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;)V

    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5147
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 5148
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    invoke-direct {p0, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->g(J)V

    .line 5149
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 5150
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5152
    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a([BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 2123
    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    int-to-long v9, p3

    sub-long/2addr v0, v9

    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    cmp-long v2, v0, v5

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v3, p2

    move-object v2, p1

    move-wide v7, v9

    .line 2135
    invoke-static/range {v2 .. v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJJJ)V

    .line 2136
    iget-wide p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    add-long/2addr p1, v9

    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    return-void

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 2129
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2131
    :cond_2
    new-instance p1, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    .line 2132
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object v0, v1, p2

    const/4 p2, 0x2

    aput-object p3, v1, p2

    const-string p2, "Pos: %d, limit: %d, len: %d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 2046
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 2049
    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(J)V

    return-void
.end method

.method public final b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1906
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(II)V

    .line 1907
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b(I)V

    return-void
.end method

.method public final b(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1930
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(II)V

    .line 1931
    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(J)V

    return-void
.end method

.method public final b(ILcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1993
    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(II)V

    const/4 v2, 0x2

    .line 1994
    invoke-direct {p0, v2, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->j(II)V

    .line 1995
    invoke-virtual {p0, v1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    const/4 p1, 0x4

    .line 1996
    invoke-virtual {p0, v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(II)V

    return-void
.end method

.method public final b(ILcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1985
    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(II)V

    const/4 v2, 0x2

    .line 1986
    invoke-direct {p0, v2, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->j(II)V

    .line 1987
    invoke-virtual {p0, v1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    const/4 p1, 0x4

    .line 1988
    invoke-virtual {p0, v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(II)V

    return-void
.end method

.method public final b([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2141
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a([BII)V

    return-void
.end method

.method public final c(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2055
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->e:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 2059
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    return-void

    .line 2062
    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 2067
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_2

    add-long/2addr v4, v0

    .line 2069
    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    return-void

    :cond_2
    add-long v2, v0, v4

    .line 2072
    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    .line 2076
    :cond_3
    new-instance p1, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    .line 2077
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1918
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(II)V

    .line 1919
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->e(I)V

    return-void
.end method

.method public final c(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2117
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    .line 4229
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 2117
    invoke-virtual {v0, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2118
    iget-wide p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    return-void
.end method

.method public final c([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2028
    invoke-virtual {p0, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    const/4 p2, 0x0

    .line 2029
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a([BII)V

    return-void
.end method

.method public final e(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2083
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    .line 3229
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 2083
    invoke-virtual {v0, v2, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2084
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    return-void
.end method

.method public final h()V
    .locals 5

    .line 2211
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    .line 6229
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 2211
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final i()I
    .locals 4

    .line 2216
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method
