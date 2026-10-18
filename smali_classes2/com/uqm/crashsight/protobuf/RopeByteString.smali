.class final Lcom/uqm/crashsight/protobuf/RopeByteString;
.super Lcom/uqm/crashsight/protobuf/ByteString;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/RopeByteString$RopeInputStream;,
        Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;,
        Lcom/uqm/crashsight/protobuf/RopeByteString$Balancer;
    }
.end annotation


# instance fields
.field private final b:I

.field private final c:Lcom/uqm/crashsight/protobuf/ByteString;

.field private final d:Lcom/uqm/crashsight/protobuf/ByteString;

.field private final e:I

.field private final f:I


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 2

    .line 146
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ByteString;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 148
    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 149
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->e:I

    .line 150
    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->b:I

    .line 151
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->i()I

    move-result p1

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/ByteString;->i()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->f:I

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/RopeByteString;)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/RopeByteString;)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p0
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    .line 280
    iget v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->b:I

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/RopeByteString;->b(II)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/RopeByteString;->b(I)B

    move-result p1

    return p1
.end method

.method protected final a(III)I
    .locals 2

    add-int v0, p2, p3

    .line 488
    iget v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->e:I

    if-gt v0, v1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/ByteString;->a(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 491
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/ByteString;->a(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 494
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, v1}, Lcom/uqm/crashsight/protobuf/ByteString;->a(III)I

    move-result p1

    .line 495
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/uqm/crashsight/protobuf/ByteString;->a(III)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;
    .locals 1

    .line 301
    new-instance v0, Lcom/uqm/crashsight/protobuf/RopeByteString$1;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/RopeByteString$1;-><init>(Lcom/uqm/crashsight/protobuf/RopeByteString;)V

    return-object v0
.end method

.method public final a(II)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 365
    iget v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->b:I

    invoke-static {p1, p2, v0}, Lcom/uqm/crashsight/protobuf/RopeByteString;->c(III)I

    move-result v0

    if-nez v0, :cond_0

    .line 369
    sget-object p1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p1

    .line 372
    :cond_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->b:I

    if-ne v0, v1, :cond_1

    return-object p0

    .line 378
    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->e:I

    if-gt p2, v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/ByteString;->a(II)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    return-object p1

    :cond_2
    if-lt p1, v0, :cond_3

    .line 385
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/ByteString;->a(II)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    .line 1310
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/ByteString;->a(II)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    .line 390
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->e:I

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/uqm/crashsight/protobuf/ByteString;->a(II)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p2

    .line 394
    new-instance v0, Lcom/uqm/crashsight/protobuf/RopeByteString;

    invoke-direct {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RopeByteString;-><init>(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-object v0
.end method

.method protected final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 472
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/RopeByteString;->d()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final a(Lcom/uqm/crashsight/protobuf/ByteOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Lcom/uqm/crashsight/protobuf/ByteOutput;)V

    .line 461
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Lcom/uqm/crashsight/protobuf/ByteOutput;)V

    return-void
.end method

.method final b(I)B
    .locals 2

    .line 287
    iget v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->e:I

    if-ge p1, v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b(I)B

    move-result p1

    return p1

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b(I)B

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->b:I

    return v0
.end method

.method protected final b(III)I
    .locals 2

    add-int v0, p2, p3

    .line 590
    iget v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->e:I

    if-gt v0, v1, :cond_0

    .line 591
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/ByteString;->b(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 593
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/ByteString;->b(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 596
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, v1}, Lcom/uqm/crashsight/protobuf/ByteString;->b(III)I

    move-result p1

    .line 597
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/uqm/crashsight/protobuf/ByteString;->b(III)I

    move-result p1

    return p1
.end method

.method protected final b([BIII)V
    .locals 2

    add-int v0, p2, p4

    .line 403
    iget v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->e:I

    if-gt v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/ByteString;->b([BIII)V

    return-void

    :cond_0
    if-lt p2, v1, :cond_1

    .line 406
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/ByteString;->b([BIII)V

    return-void

    :cond_1
    sub-int/2addr v1, p2

    .line 409
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/uqm/crashsight/protobuf/ByteString;->b([BIII)V

    .line 410
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/uqm/crashsight/protobuf/ByteString;->b([BIII)V

    return-void
.end method

.method public final e()Ljava/nio/ByteBuffer;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/RopeByteString;->d()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 507
    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 511
    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 512
    iget v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->b:I

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 515
    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->b:I

    if-nez v1, :cond_3

    return v0

    .line 524
    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/RopeByteString;->j()I

    move-result v1

    .line 525
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->j()I

    move-result v3

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eq v1, v3, :cond_4

    return v2

    .line 1542
    :cond_4
    new-instance v1, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v1, p0, v2}, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/uqm/crashsight/protobuf/ByteString;B)V

    .line 1543
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    .line 1546
    new-instance v4, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v4, p1, v2}, Lcom/uqm/crashsight/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/uqm/crashsight/protobuf/ByteString;B)V

    .line 1547
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1551
    :goto_0
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;->b()I

    move-result v8

    sub-int/2addr v8, v5

    .line 1552
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;->b()I

    move-result v9

    sub-int/2addr v9, v6

    .line 1553
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez v5, :cond_5

    .line 1558
    invoke-virtual {v3, p1, v6, v10}, Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;->a(Lcom/uqm/crashsight/protobuf/ByteString;II)Z

    move-result v11

    goto :goto_1

    .line 1559
    :cond_5
    invoke-virtual {p1, v3, v5, v10}, Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;->a(Lcom/uqm/crashsight/protobuf/ByteString;II)Z

    move-result v11

    :goto_1
    if-nez v11, :cond_6

    return v2

    :cond_6
    add-int/2addr v7, v10

    .line 1565
    iget v11, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->b:I

    if-lt v7, v11, :cond_8

    if-ne v7, v11, :cond_7

    return v0

    .line 1569
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    if-ne v10, v8, :cond_9

    .line 1574
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    const/4 v5, 0x0

    goto :goto_2

    :cond_9
    add-int/2addr v5, v10

    :goto_2
    if-ne v10, v9, :cond_a

    .line 1580
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;

    const/4 v6, 0x0

    goto :goto_0

    :cond_a
    add-int/2addr v6, v10

    goto :goto_0
.end method

.method public final g()Z
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->c:Lcom/uqm/crashsight/protobuf/ByteString;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/uqm/crashsight/protobuf/ByteString;->a(III)I

    move-result v0

    .line 481
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/uqm/crashsight/protobuf/ByteString;->a(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final h()Lcom/uqm/crashsight/protobuf/CodedInputStream;
    .locals 1

    .line 606
    new-instance v0, Lcom/uqm/crashsight/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/uqm/crashsight/protobuf/RopeByteString;)V

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method protected final i()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/uqm/crashsight/protobuf/RopeByteString;->f:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/RopeByteString;->a()Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method
