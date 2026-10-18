.class public Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;
.super Ljava/lang/Object;
.source "ApkSignatureV2ChannelTool.java"


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final TAG:Ljava/lang/String; = "ApkSignatureV2ChannelTool"

.field private static final YYB_COMMENT_BLOCK_ID:I = 0x71717874


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static genApkSigningBlockWithNewPair(Ljava/nio/ByteBuffer;I[B)Lcom/gsdk/gcloud/apkchannel/v2/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I[B)",
            "Lcom/gsdk/gcloud/apkchannel/v2/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 487
    invoke-static/range {p0 .. p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/lit8 v2, v2, -0x18

    const/16 v3, 0x8

    move-object/from16 v4, p0

    .line 494
    invoke-static {v4, v3, v2}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 497
    array-length v5, v1

    add-int/lit8 v5, v5, 0xc

    .line 499
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 500
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 501
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v8, 0x0

    .line 504
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_4

    add-int/lit8 v8, v8, 0x1

    .line 506
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-lt v9, v3, :cond_3

    .line 510
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    const-wide/16 v14, 0x4

    .line 511
    const-string v9, " size out of range: "

    const-string v3, "APK Signing Block entry #"

    cmp-long v16, v12, v14

    if-ltz v16, :cond_2

    const-wide/32 v14, 0x7fffffff

    cmp-long v16, v12, v14

    if-gtz v16, :cond_2

    long-to-int v14, v12

    .line 517
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    add-int/2addr v15, v14

    .line 518
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-gt v14, v7, :cond_1

    .line 523
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 525
    array-length v7, v1

    add-int/lit8 v7, v7, 0x4

    sub-int/2addr v7, v14

    int-to-long v7, v7

    .line 526
    array-length v9, v1

    add-int/lit8 v9, v9, 0x4

    int-to-long v12, v9

    invoke-virtual {v6, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 527
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 528
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 529
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 530
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    invoke-virtual {v6, v3, v9, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 531
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 534
    :cond_0
    invoke-virtual {v6, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 535
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v14, v14, -0x4

    .line 536
    invoke-static {v2, v14}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 537
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v3, 0x8

    goto :goto_0

    .line 519
    :cond_1
    new-instance v0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", available: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_2
    new-instance v0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_3
    new-instance v0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Insufficient data to read size of APK Signing Block entry #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-wide v7, v10

    :goto_1
    cmp-long v2, v7, v10

    if-nez v2, :cond_5

    .line 542
    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    invoke-virtual {v6, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 543
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 544
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    int-to-long v7, v5

    .line 548
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    add-long/2addr v0, v7

    .line 550
    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 551
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x10

    sub-int/2addr v3, v4

    invoke-virtual {v6, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 553
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 554
    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 556
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    long-to-int v1, v0

    const/16 v0, 0x8

    add-int/2addr v1, v0

    .line 557
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 559
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static genApkSigningBlockWithNewPair2(Ljava/nio/ByteBuffer;I[B)Lcom/gsdk/gcloud/apkchannel/v2/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I[B)",
            "Lcom/gsdk/gcloud/apkchannel/v2/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 565
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 573
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/16 v1, 0x8

    .line 572
    invoke-static {p0, v1, v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 578
    array-length v2, p2

    add-int/lit8 v2, v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 582
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 584
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v1, :cond_3

    .line 588
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    const-wide/16 v9, 0x4

    .line 589
    const-string v5, " size out of range: "

    const-string v11, "APK Signing Block entry #"

    cmp-long v12, v7, v9

    if-ltz v12, :cond_2

    const-wide/32 v9, 0x7fffffff

    cmp-long v12, v7, v9

    if-gtz v12, :cond_2

    long-to-int v9, v7

    .line 595
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v9

    .line 596
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-gt v9, v12, :cond_1

    .line 601
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    const v11, 0x7109871a

    if-ne v5, v11, :cond_0

    add-int/lit8 v4, v9, 0x8

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x20

    .line 615
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 616
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 617
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 620
    invoke-virtual {v2, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 621
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v9, -0x4

    .line 622
    invoke-static {v0, v9}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 627
    :cond_0
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 597
    :cond_1
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 590
    :cond_2
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 585
    :cond_3
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Insufficient data to read size of APK Signing Block entry #"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move-object v2, v6

    const/4 v4, 0x0

    :goto_1
    if-nez v2, :cond_5

    return-object v6

    .line 634
    :cond_5
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    int-to-long v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 635
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 636
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 644
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    sub-int/2addr v4, v1

    int-to-long v4, v4

    sub-long p1, v4, p1

    .line 648
    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 649
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    array-length p0, p0

    const/16 v6, 0x10

    sub-int/2addr p0, v6

    invoke-virtual {v2, v0, p0, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 651
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 652
    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 654
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    long-to-int p0, v4

    add-int/2addr p0, v1

    .line 655
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 657
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static getApkCurChannelId(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :try_start_0
    invoke-static {v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 204
    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 205
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 206
    invoke-static {v0, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_0

    .line 212
    invoke-static {v1, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    .line 214
    invoke-static {v0, v1, v2}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 215
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    .line 219
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findChanelIdInSignBlock(Ljava/nio/ByteBuffer;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return p0

    .line 207
    :cond_0
    :try_start_1
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {p0, v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 202
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 221
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static getApkCurChannelValue(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :try_start_0
    invoke-static {v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 227
    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 228
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 229
    invoke-static {v0, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_0

    .line 235
    invoke-static {v1, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    .line 237
    invoke-static {v0, v1, v2}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 238
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    .line 242
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkChannelInfoBlock(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 244
    invoke-virtual {p0, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object v2

    .line 230
    :cond_0
    :try_start_1
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {p0, v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 225
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 247
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static getCdfh(Ljava/io/RandomAccessFile;JI)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 478
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 479
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 480
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-object p3
.end method

.method private static getCentralDirOffset(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :try_start_0
    invoke-static {v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 422
    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 423
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 424
    invoke-static {v0, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_0

    .line 428
    invoke-static {v1, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v1

    .line 425
    :cond_0
    :try_start_1
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {p0, v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 420
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 431
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static getCentralDirSize(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :try_start_0
    invoke-static {v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 437
    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 438
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 439
    invoke-static {v0, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_0

    .line 443
    invoke-static {v1, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirSize(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v1

    .line 440
    :cond_0
    :try_start_1
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {p0, v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 435
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 446
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static getEocdOffset(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 450
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :try_start_0
    invoke-static {v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 453
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 454
    invoke-static {v0, v1, v2}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 459
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v1

    .line 455
    :cond_0
    :try_start_1
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {p0, v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 450
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 459
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static getEocdSize(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 463
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :try_start_0
    invoke-static {v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 465
    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 466
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 467
    invoke-static {v0, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_0

    .line 471
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, p0

    .line 472
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v1

    .line 468
    :cond_0
    :try_start_1
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {p0, v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 463
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 472
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static getSignBlockOffset(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->getSigningBlockOffset(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSignBlockSize(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->getSigningBlockSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSigningBlockOffset(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :try_start_0
    invoke-static {v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 377
    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 378
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 379
    invoke-static {v0, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_0

    .line 385
    invoke-static {v1, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    .line 386
    invoke-static {v0, v1, v2}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 389
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v1

    .line 380
    :cond_0
    :try_start_1
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {p0, v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 375
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 392
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static getSigningBlockSize(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :try_start_0
    invoke-static {v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 399
    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 400
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 401
    invoke-static {v0, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_1

    .line 407
    invoke-static {v1, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    .line 408
    invoke-static {v0, v1, v2}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 410
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_0

    .line 412
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, p0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 416
    :goto_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v1

    .line 402
    :cond_1
    :try_start_1
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {p0, v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 397
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 416
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public static isSignatureV2Apk(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->hasSignature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static readCDFHOffset(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->getCentralDirOffset(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readCDFHSize(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->getCentralDirSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readChannelInfoOffset(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :try_start_0
    invoke-static {v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 306
    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 307
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 308
    invoke-static {v0, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_0

    .line 314
    invoke-static {v1, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    .line 316
    invoke-static {v0, v1, v2}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 317
    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 321
    invoke-static {v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findChannelBlockOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 324
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v3, v1

    .line 327
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v3

    .line 309
    :cond_0
    :try_start_1
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {p0, v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 304
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 327
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private static readChannelInfoOffset(Ljava/lang/String;I)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const-string p1, "apollo0511 readChannelInfoOffset getOffset and channelId:"

    .line 252
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :try_start_0
    invoke-static {v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object v1

    .line 254
    iget-object v2, v1, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 255
    iget-object v1, v1, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 256
    invoke-static {v0, v3, v4}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    invoke-static {v2, v3, v4}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    .line 264
    invoke-static {v0, v1, v2}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object v1

    .line 265
    iget-object v2, v1, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 269
    invoke-static {v2}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findChannelBlockOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 272
    iget-object v1, v1, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    const/4 v1, 0x0

    .line 274
    invoke-static {p0, v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->readChannelInfoSize(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int p0, v2

    add-int/lit8 p0, p0, -0xc

    .line 277
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 278
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0xc

    add-long/2addr v2, v4

    .line 279
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 280
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v0, v2, v3, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 285
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v3, v2, [B

    .line 286
    invoke-virtual {p0, v3, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 288
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;

    invoke-direct {p0}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->decode([B)V

    .line 291
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->p:Ljava/util/Properties;

    const-string v1, "channelId"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 292
    const-string v1, "ApkSignatureV2ChannelTool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 294
    :try_start_2
    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    :goto_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v4

    .line 257
    :cond_0
    :try_start_3
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string p1, "ZIP64 APK not supported"

    invoke-direct {p0, p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 252
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 298
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method private static readChannelInfoSize(Ljava/lang/String;I)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const-string p1, "apollo0511 readChannelInfoSize getSize and channelId:"

    .line 332
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :try_start_0
    invoke-static {v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object v1

    .line 334
    iget-object v2, v1, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 335
    iget-object v1, v1, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 336
    invoke-static {v0, v3, v4}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    invoke-static {v2, v3, v4}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    .line 344
    invoke-static {v0, v1, v2}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object v1

    .line 345
    iget-object v1, v1, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 349
    invoke-static {v1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getApkSigningBlockChannelSize(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 351
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->readChannelInfoOffset(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int p0, v1

    add-int/lit8 p0, p0, -0xc

    .line 352
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 353
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v5, 0xc

    add-long/2addr v3, v5

    .line 354
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 355
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 357
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 358
    invoke-virtual {p0, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 360
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;

    invoke-direct {p0}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->decode([B)V

    .line 363
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/ChannelComment;->p:Ljava/util/Properties;

    const-string v3, "channelId"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 364
    const-string v3, "ApkSignatureV2ChannelTool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 366
    :try_start_2
    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    :goto_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v1

    .line 337
    :cond_0
    :try_start_3
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string p1, "ZIP64 APK not supported"

    invoke-direct {p0, p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 332
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 370
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public static readCommentOffset(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const v0, 0x71717874

    .line 30
    invoke-static {p0, v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->readChannelInfoOffset(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readCommentSize(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const v0, 0x71717874

    .line 34
    invoke-static {p0, v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->readChannelInfoSize(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readEOCDOffset(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->getEocdOffset(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readEOCDSize(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->getEocdSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readPairValueWithId(Ljava/lang/String;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :try_start_0
    invoke-static {v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 177
    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 178
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 179
    invoke-static {v0, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_0

    .line 185
    invoke-static {v1, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    .line 187
    invoke-static {v0, v1, v2}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 188
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    .line 192
    invoke-static {p0, p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlockWithId(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 194
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0, v1, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object v1

    .line 180
    :cond_0
    :try_start_1
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string p1, "ZIP64 APK not supported"

    invoke-direct {p0, p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 175
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 198
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static readYYBComment(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const v0, 0x71717874

    .line 74
    invoke-static {p0, v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->readPairValueWithId(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static updateApkWithPair(Ljava/lang/String;I[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :try_start_0
    invoke-static {v0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p0

    .line 122
    iget-object v1, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 123
    iget-object p0, p0, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 124
    invoke-static {v0, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_2

    .line 130
    invoke-static {v1, v2, v3}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int p0, v2

    .line 132
    invoke-static {v0, v4, v5, p0}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->getCdfh(Ljava/io/RandomAccessFile;JI)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 135
    invoke-static {v0, v4, v5}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object v2

    .line 136
    iget-object v3, v2, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 137
    iget-object v2, v2, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 141
    invoke-static {v3, p1, p2}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->genApkSigningBlockWithNewPair2(Ljava/nio/ByteBuffer;I[B)Lcom/gsdk/gcloud/apkchannel/v2/Pair;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    .line 146
    :cond_0
    :try_start_1
    iget-object p2, p1, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    .line 147
    iget-object p1, p1, Lcom/gsdk/gcloud/apkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v4, v2

    .line 150
    invoke-static {v1, v4, v5}, Lcom/gsdk/gcloud/apkchannel/v2/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    .line 152
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 153
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 154
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    .line 153
    invoke-virtual {v0, p1, v4, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 156
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr p2, v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 157
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    const-wide/16 p0, 0x0

    cmp-long p2, v2, p0

    if-gez p2, :cond_1

    .line 159
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p0

    add-long/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    .line 125
    :cond_2
    :try_start_2
    new-instance p0, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string p1, "ZIP64 APK not supported"

    invoke-direct {p0, p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    .line 120
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 161
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static updateChannInfoBlock(Ljava/lang/String;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .line 103
    invoke-static {p0, p1, p2}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->updateApkWithPair(Ljava/lang/String;I[B)V

    return-void
.end method

.method public static updateYYBComment(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const v0, 0x71717874

    .line 89
    invoke-static {p0, v0, p1}, Lcom/gsdk/gcloud/apkchannel/v2/ApkSignatureV2ChannelTool;->updateApkWithPair(Ljava/lang/String;I[B)V

    return-void
.end method
