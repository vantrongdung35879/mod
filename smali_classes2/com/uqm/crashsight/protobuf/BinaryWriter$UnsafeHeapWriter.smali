.class final Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;
.super Lcom/uqm/crashsight/protobuf/BinaryWriter;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeHeapWriter"
.end annotation


# instance fields
.field private c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

.field private d:[B

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method private a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V
    .locals 4

    .line 1490
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1494
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->c()V

    .line 1495
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1497
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    .line 1498
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->d:[B

    .line 1499
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->e()I

    move-result v0

    .line 1500
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->g()I

    move-result v1

    add-int/2addr v1, v0

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->f:J

    .line 1501
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->f()I

    move-result p1

    add-int/2addr v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->e:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 1502
    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->g:J

    .line 1503
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->h:J

    .line 1504
    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    return-void

    .line 1491
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocator returned non-heap buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d()V
    .locals 1

    .line 1482
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a()Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    return-void
.end method

.method private e()I
    .locals 4

    .line 1517
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->g:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1961
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1962
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->e()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1965
    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->b:I

    .line 1966
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1970
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->d()V

    .line 1973
    :cond_0
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    .line 1974
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->d:[B

    long-to-int v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v3, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a([BII)V
    .locals 5

    const/4 v0, 0x1

    if-ltz p2, :cond_1

    add-int v1, p2, p3

    .line 1918
    array-length v2, p1

    if-gt v1, v2, :cond_1

    .line 3979
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->e()I

    move-result v1

    if-ge v1, p3, :cond_0

    .line 4486
    invoke-virtual {p0, p3}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    .line 1924
    :cond_0
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    .line 1925
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->d:[B

    long-to-int v2, v1

    add-int/2addr v2, v0

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 1919
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 1920
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v0

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const-string p1, "value.length=%d, offset=%d, length=%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b([BII)V
    .locals 5

    const/4 v0, 0x1

    if-ltz p2, :cond_1

    add-int v1, p2, p3

    .line 1930
    array-length v2, p1

    if-gt v1, v2, :cond_1

    .line 1934
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->e()I

    move-result v1

    if-ge v1, p3, :cond_0

    .line 1937
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->b:I

    .line 1938
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a([BII)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1942
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->d()V

    return-void

    .line 1946
    :cond_0
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    .line 1947
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->d:[B

    long-to-int v2, v1

    add-int/2addr v2, v0

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 1931
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 1932
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v0

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const-string p1, "value.length=%d, offset=%d, length=%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final c()V
    .locals 5

    .line 1468
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    if-eqz v0, :cond_0

    .line 1469
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->b:I

    .line 2513
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->h:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    .line 1469
    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->b:I

    .line 1470
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    .line 3478
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    long-to-int v2, v1

    .line 1470
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->e()I

    move-result v1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    const/4 v0, 0x0

    .line 1471
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    const-wide/16 v0, 0x0

    .line 1472
    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    .line 1473
    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->h:J

    :cond_0
    return-void
.end method
