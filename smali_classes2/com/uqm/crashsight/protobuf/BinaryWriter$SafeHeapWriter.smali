.class final Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;
.super Lcom/uqm/crashsight/protobuf/BinaryWriter;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapWriter"
.end annotation


# instance fields
.field private c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

.field private d:[B

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method private a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V
    .locals 2

    .line 952
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->c()V

    .line 958
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 960
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    .line 961
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->d:[B

    .line 962
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->e()I

    move-result v0

    .line 963
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->g()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->f:I

    .line 964
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->f()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->e:I

    add-int/lit8 v0, v0, -0x1

    .line 965
    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->g:I

    .line 966
    iget p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->h:I

    .line 967
    iput p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->i:I

    return-void

    .line 953
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocator returned non-heap buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(I)V
    .locals 0

    .line 948
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    return-void
.end method

.method private d()V
    .locals 1

    .line 944
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->a()Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    return-void
.end method

.method private e()I
    .locals 2

    .line 980
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->i:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->g:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1422
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1423
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->e()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1426
    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->b:I

    .line 1427
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->a:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1431
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->d()V

    .line 1434
    :cond_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->i:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->i:I

    .line 1435
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->d:[B

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a([BII)V
    .locals 2

    .line 1383
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->e()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 1384
    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->c(I)V

    .line 1387
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->i:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->i:I

    .line 1388
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->d:[B

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final b([BII)V
    .locals 2

    .line 1393
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->e()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 1396
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->b:I

    .line 1397
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->a:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a([BII)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1401
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->d()V

    return-void

    .line 1405
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->i:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->i:I

    .line 1406
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->d:[B

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final c()V
    .locals 3

    .line 934
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    if-eqz v0, :cond_0

    .line 935
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->b:I

    .line 1976
    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->h:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->i:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 935
    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->b:I

    .line 936
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->i:I

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->e()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    const/4 v0, 0x0

    .line 937
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    const/4 v0, 0x0

    .line 938
    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->i:I

    .line 939
    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;->h:I

    :cond_0
    return-void
.end method
