.class public Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;
.super Ljava/lang/Object;
.source "ApkSignatureV2V3ChannelTool.java"


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final APK_SIGNATURE_SCHEME_V3_BLOCK_ID:I = -0xfac9740

.field private static final MSDK_COMMENT_BLOCK_ID:I = 0x71717874

.field private static final YYB_COMMENT_BLOCK_ID:I = 0x71717874


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GetApkSignatureBlockSize(Ljava/lang/String;ILcom/gsdk/gcloud/newapkchannel/MSDKComment;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 247
    :try_start_0
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {p2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    :try_start_1
    invoke-static {p2}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/newapkchannel/v2/Pair;

    move-result-object p0

    .line 250
    iget-object p1, p0, Lcom/gsdk/gcloud/newapkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 251
    iget-object p0, p0, Lcom/gsdk/gcloud/newapkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 252
    invoke-static {p2, v0, v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_0

    .line 256
    invoke-static {p1, v0, v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int v1, v0

    .line 258
    invoke-static {p2, p0, p1, v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->getCdfh(Ljava/io/RandomAccessFile;JI)Ljava/nio/ByteBuffer;

    .line 262
    invoke-static {p2, p0, p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/gsdk/gcloud/newapkchannel/v2/Pair;

    move-result-object p0

    .line 263
    iget-object p0, p0, Lcom/gsdk/gcloud/newapkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    return p0

    .line 253
    :cond_0
    :try_start_2
    new-instance p0, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string p1, "ZIP64 APK not supported"

    invoke-direct {p0, p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    nop

    move-object p1, p2

    goto :goto_0

    :catchall_1
    nop

    :goto_0
    if-eqz p1, :cond_1

    .line 268
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static GetApkSignatureSize(Ljava/lang/String;Lcom/gsdk/gcloud/newapkchannel/MSDKComment;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const v0, 0x71717874

    .line 240
    invoke-static {p0, v0, p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->GetApkSignatureBlockSize(Ljava/lang/String;ILcom/gsdk/gcloud/newapkchannel/MSDKComment;)I

    move-result p0

    return p0
.end method

.method private static checkNeedPaddingData(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .line 324
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 325
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 326
    const-string p0, "APK Sig Block 42"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static genApkSigningBlockWithNewPair(Ljava/nio/ByteBuffer;I[B)Lcom/gsdk/gcloud/newapkchannel/v2/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I[B)",
            "Lcom/gsdk/gcloud/newapkchannel/v2/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 155
    invoke-static/range {p0 .. p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/lit8 v2, v2, -0x18

    const/16 v3, 0x8

    move-object/from16 v4, p0

    .line 162
    invoke-static {v4, v3, v2}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 165
    array-length v5, v1

    add-int/lit8 v5, v5, 0xc

    .line 167
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 168
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 169
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v8, 0x0

    .line 172
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_4

    add-int/lit8 v8, v8, 0x1

    .line 174
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-lt v9, v3, :cond_3

    .line 178
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    const-wide/16 v14, 0x4

    .line 179
    const-string v9, " size out of range: "

    const-string v3, "APK Signing Block entry #"

    cmp-long v16, v12, v14

    if-ltz v16, :cond_2

    const-wide/32 v14, 0x7fffffff

    cmp-long v16, v12, v14

    if-gtz v16, :cond_2

    long-to-int v14, v12

    .line 185
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    add-int/2addr v15, v14

    .line 186
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-gt v14, v7, :cond_1

    .line 191
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 193
    array-length v7, v1

    add-int/lit8 v7, v7, 0x4

    sub-int/2addr v7, v14

    int-to-long v7, v7

    .line 194
    array-length v9, v1

    add-int/lit8 v9, v9, 0x4

    int-to-long v12, v9

    invoke-virtual {v6, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 195
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 197
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    invoke-virtual {v6, v3, v9, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 202
    :cond_0
    invoke-virtual {v6, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 203
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v14, v14, -0x4

    .line 204
    invoke-static {v2, v14}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 205
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v3, 0x8

    goto :goto_0

    .line 187
    :cond_1
    new-instance v0, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", available: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_2
    new-instance v0, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_3
    new-instance v0, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Insufficient data to read size of APK Signing Block entry #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-wide v7, v10

    :goto_1
    cmp-long v2, v7, v10

    if-nez v2, :cond_5

    .line 210
    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    invoke-virtual {v6, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 211
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 212
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    int-to-long v7, v5

    .line 216
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    add-long/2addr v0, v7

    .line 218
    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 219
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x10

    sub-int/2addr v3, v4

    invoke-virtual {v6, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 220
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    long-to-int v1, v0

    const/16 v0, 0x8

    add-int/2addr v1, v0

    .line 223
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 224
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/gsdk/gcloud/newapkchannel/v2/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/gsdk/gcloud/newapkchannel/v2/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static getCdfh(Ljava/io/RandomAccessFile;JI)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 146
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 148
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-object p3
.end method

.method private static getSignValidString([B)Ljava/lang/String;
    .locals 1

    .line 75
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 77
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->toHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getSignatureV2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7109871a

    .line 40
    invoke-static {p0, v0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->readPairValueWithId(Ljava/lang/String;I)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->getSignValidString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSignatureV3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, -0xfac9740

    .line 48
    invoke-static {p0, v0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->readPairValueWithId(Ljava/lang/String;I)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->getSignValidString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSignatureV2Apk(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7109871a

    .line 36
    invoke-static {p0, v0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->hasSignature(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isSignatureV3Apk(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, -0xfac9740

    .line 85
    invoke-static {p0, v0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->hasSignature(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static readPairValueWithId(Ljava/lang/String;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    invoke-static {v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/newapkchannel/v2/Pair;

    move-result-object p0

    .line 113
    iget-object v2, p0, Lcom/gsdk/gcloud/newapkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 114
    iget-object p0, p0, Lcom/gsdk/gcloud/newapkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 115
    invoke-static {v1, v3, v4}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_1

    .line 121
    invoke-static {v2, v3, v4}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    .line 123
    invoke-static {v1, v2, v3}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/gsdk/gcloud/newapkchannel/v2/Pair;

    move-result-object p0

    .line 124
    iget-object p0, p0, Lcom/gsdk/gcloud/newapkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    .line 127
    invoke-static {p0, p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlockWithId(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0, v0, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    .line 116
    :cond_1
    :try_start_2
    new-instance p0, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string p1, "ZIP64 APK not supported"

    invoke-direct {p0, p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object p1, v0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v0

    .line 134
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    move-object v0, p1

    :goto_1
    return-object v0

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 139
    :cond_3
    throw p0
.end method

.method public static readYYBComment(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const v0, 0x71717874

    .line 95
    invoke-static {p0, v0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->readPairValueWithId(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 61
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 62
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static updateApkWithPair(Ljava/lang/String;ILcom/gsdk/gcloud/newapkchannel/MSDKComment;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 278
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 279
    :try_start_1
    invoke-static {v1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/gsdk/gcloud/newapkchannel/v2/Pair;

    move-result-object p0

    .line 281
    iget-object v0, p0, Lcom/gsdk/gcloud/newapkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 282
    iget-object p0, p0, Lcom/gsdk/gcloud/newapkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 283
    invoke-static {v1, v2, v3}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result p0

    if-nez p0, :cond_1

    .line 287
    invoke-static {v0, v2, v3}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int p0, v2

    .line 289
    invoke-static {v1, v4, v5, p0}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->getCdfh(Ljava/io/RandomAccessFile;JI)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 293
    invoke-static {v1, v4, v5}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/gsdk/gcloud/newapkchannel/v2/Pair;

    move-result-object v2

    .line 294
    iget-object v3, v2, Lcom/gsdk/gcloud/newapkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 295
    iget-object v2, v2, Lcom/gsdk/gcloud/newapkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 298
    invoke-static {v3}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->checkNeedPaddingData(Ljava/nio/ByteBuffer;)Z

    move-result v2

    .line 299
    invoke-virtual {p2, v2}, Lcom/gsdk/gcloud/newapkchannel/MSDKComment;->encode(Z)[B

    move-result-object p2

    .line 301
    invoke-static {v3, p1, p2}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->genApkSigningBlockWithNewPair(Ljava/nio/ByteBuffer;I[B)Lcom/gsdk/gcloud/newapkchannel/v2/Pair;

    move-result-object p1

    .line 303
    iget-object p2, p1, Lcom/gsdk/gcloud/newapkchannel/v2/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    .line 304
    iget-object p1, p1, Lcom/gsdk/gcloud/newapkchannel/v2/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v4, v2

    .line 306
    invoke-static {v0, v4, v5}, Lcom/gsdk/gcloud/newapkchannel/v2/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    .line 307
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 308
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 309
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    .line 308
    invoke-virtual {v1, p1, v4, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 310
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr p2, v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {v1, p1, p2, p0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 311
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    invoke-virtual {v1, p0, p1, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    const-wide/16 p0, 0x0

    cmp-long p2, v2, p0

    if-gez p2, :cond_0

    .line 313
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p0

    add-long/2addr p0, v2

    invoke-virtual {v1, p0, p1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    .line 284
    :cond_1
    :try_start_2
    new-instance p0, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string p1, "ZIP64 APK not supported"

    invoke-direct {p0, p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 319
    :cond_2
    throw p0
.end method

.method public static updateYYBComment(Ljava/lang/String;Lcom/gsdk/gcloud/newapkchannel/MSDKComment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const v0, 0x71717874

    .line 235
    invoke-static {p0, v0, p1}, Lcom/gsdk/gcloud/newapkchannel/v2/ApkSignatureV2V3ChannelTool;->updateApkWithPair(Ljava/lang/String;ILcom/gsdk/gcloud/newapkchannel/MSDKComment;)V

    return-void
.end method
