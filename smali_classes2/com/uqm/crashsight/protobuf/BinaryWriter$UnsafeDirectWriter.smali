.class final Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;
.super Lcom/uqm/crashsight/protobuf/BinaryWriter;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectWriter"
.end annotation


# instance fields
.field private c:Ljava/nio/ByteBuffer;

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method private a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V
    .locals 4

    .line 2559
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2562
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2563
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2567
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c()V

    .line 2568
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2570
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    .line 2571
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2572
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2574
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->d:J

    .line 2575
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->e:J

    .line 2576
    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    return-void

    .line 2564
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocator returned non-direct buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2560
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocated buffer does not have NIO buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(I)V
    .locals 0

    .line 2555
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    return-void
.end method

.method private d()V
    .locals 1

    .line 2551
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b()Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    return-void
.end method

.method private e()I
    .locals 4

    .line 2585
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->e:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private f()I
    .locals 4

    .line 2605
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->d:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 3046
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 5589
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    .line 3050
    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b:I

    .line 3051
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->a:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 3055
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->d()V

    return-void

    .line 3059
    :cond_0
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    .line 3060
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3061
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a([BII)V
    .locals 4

    .line 3589
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p3, :cond_0

    .line 3005
    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c(I)V

    .line 3008
    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    .line 3009
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3010
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final b([BII)V
    .locals 4

    .line 4589
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p3, :cond_0

    .line 3018
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b:I

    .line 3019
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->a:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a([BII)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 3023
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->d()V

    return-void

    .line 3027
    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    .line 3028
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3029
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method final c()V
    .locals 2

    .line 2594
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2595
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->e()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b:I

    .line 2597
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 2598
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 2599
    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    .line 2600
    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->e:J

    :cond_0
    return-void
.end method
