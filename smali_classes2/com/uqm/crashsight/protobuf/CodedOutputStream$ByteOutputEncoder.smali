.class final Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;
.super Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteOutputEncoder"
.end annotation


# instance fields
.field private final e:Lcom/uqm/crashsight/protobuf/ByteOutput;


# direct methods
.method private k(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x14

    .line 2419
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->p(I)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 2420
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->j(II)V

    .line 2421
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->n(I)V

    return-void
.end method

.method private l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2699
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->e:Lcom/uqm/crashsight/protobuf/ByteOutput;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/uqm/crashsight/protobuf/ByteOutput;->a([BII)V

    .line 2700
    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    return-void
.end method

.method private p(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2693
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 2694
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->l()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2552
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->b:I

    if-ne v0, v1, :cond_0

    .line 2553
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->l()V

    .line 2556
    :cond_0
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->b(B)V

    return-void
.end method

.method public final a(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2407
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 2433
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->p(I)V

    const/4 v0, 0x0

    .line 2434
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->j(II)V

    .line 2435
    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->g(J)V

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

    .line 2460
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(II)V

    .line 2461
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(Lcom/uqm/crashsight/protobuf/ByteString;)V

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

    .line 2509
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(II)V

    .line 2510
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)V

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

    .line 2454
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(II)V

    .line 2455
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 2447
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->p(I)V

    const/4 v0, 0x0

    .line 2448
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->j(II)V

    int-to-byte p1, p2

    .line 2449
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->b(B)V

    return-void
.end method

.method public final a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 2583
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->p(I)V

    .line 2584
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->g(J)V

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2486
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c(I)V

    .line 2487
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

    .line 2540
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c(I)V

    .line 2541
    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2597
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2598
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->h(I)I

    move-result v1

    add-int v2, v1, v0

    .line 2602
    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->b:I

    if-le v2, v3, :cond_0

    .line 2607
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2608
    invoke-static {p1, v1, v2, v0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;[BII)I

    move-result p1

    .line 2609
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c(I)V

    .line 2610
    invoke-virtual {p0, v1, v2, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->b([BII)V

    return-void

    .line 2615
    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->b:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_1

    .line 2617
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->l()V

    .line 2620
    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    .line 2624
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->h(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    add-int v1, v0, v2

    .line 2627
    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    .line 2628
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    iget v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->b:I

    iget v5, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v3, v4}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 2631
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 2633
    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->n(I)V

    .line 2634
    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    .line 2635
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->d:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->d:I

    return-void

    .line 2637
    :cond_2
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2638
    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->n(I)V

    .line 2639
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    invoke-static {p1, v2, v3, v1}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;[BII)I

    move-result v2

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    .line 2640
    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->d:I
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2650
    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    .line 2644
    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->d:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    sub-int/2addr v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->d:I

    .line 2645
    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    .line 2648
    invoke-virtual {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;)V

    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2686
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->h()V

    .line 2687
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2688
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->e:Lcom/uqm/crashsight/protobuf/ByteOutput;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/ByteOutput;->a(Ljava/nio/ByteBuffer;)V

    .line 2689
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->d:I

    return-void
.end method

.method public final a([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2664
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->h()V

    .line 2665
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->e:Lcom/uqm/crashsight/protobuf/ByteOutput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/ByteOutput;->a([BII)V

    .line 2666
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->d:I

    return-void
.end method

.method public final b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 2562
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 2565
    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(J)V

    return-void
.end method

.method public final b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 2412
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->p(I)V

    const/4 v0, 0x0

    .line 2413
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->j(II)V

    .line 2414
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->m(I)V

    return-void
.end method

.method public final b(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 2440
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->p(I)V

    const/4 v0, 0x1

    .line 2441
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->j(II)V

    .line 2442
    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->h(J)V

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

    .line 2532
    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(II)V

    const/4 v2, 0x2

    .line 2533
    invoke-direct {p0, v2, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->k(II)V

    .line 2534
    invoke-virtual {p0, v1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    const/4 p1, 0x4

    .line 2535
    invoke-virtual {p0, v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(II)V

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

    .line 2523
    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(II)V

    const/4 v2, 0x2

    .line 2524
    invoke-direct {p0, v2, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->k(II)V

    .line 2525
    invoke-virtual {p0, v1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    const/4 p1, 0x4

    .line 2526
    invoke-virtual {p0, v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a(II)V

    return-void
.end method

.method public final b([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2671
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->h()V

    .line 2672
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->e:Lcom/uqm/crashsight/protobuf/ByteOutput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/ByteOutput;->b([BII)V

    .line 2673
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->d:I

    return-void
.end method

.method public final c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 2571
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->p(I)V

    .line 2572
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->n(I)V

    return-void
.end method

.method public final c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 2426
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->p(I)V

    const/4 v0, 0x5

    .line 2427
    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->j(II)V

    .line 2428
    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->o(I)V

    return-void
.end method

.method public final c(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 2589
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->p(I)V

    .line 2590
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->h(J)V

    return-void
.end method

.method public final c([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2492
    invoke-virtual {p0, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c(I)V

    const/4 p2, 0x0

    .line 2493
    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->a([BII)V

    return-void
.end method

.method public final e(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 2577
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->p(I)V

    .line 2578
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->o(I)V

    return-void
.end method

.method public final h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2656
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->c:I

    if-lez v0, :cond_0

    .line 2658
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;->l()V

    :cond_0
    return-void
.end method
