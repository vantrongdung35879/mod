.class public Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;
.super Ljava/lang/Object;
.source "EncryptUtil.java"


# static fields
.field private static final DEFAULT_BUFFERSIZE:I = 0xf5

.field private static final DEFAULT_KEY_SIZE:I = 0x800

.field private static final DEFAULT_SPLIT:Ljava/lang/String; = "#PART#"

.field private static final ECB_PKCS1_PADDING:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final RSA:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Decode([B)[B
    .locals 1

    const/4 v0, 0x2

    .line 360
    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static base64Encode([B)[B
    .locals 1

    const/4 v0, 0x2

    .line 356
    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptAES([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 349
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v3, "AES"

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 350
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x2

    .line 351
    invoke-virtual {v0, p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 352
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptBase64RSA([B[BZLjava/lang/String;)[B
    .locals 0

    .line 252
    invoke-static {p0}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->base64Decode([B)[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->decryptRSA([B[BZLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptByPublicKeyAndBase64Decode([B[B)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    array-length v0, p0

    .line 151
    const-string v1, "RSA/ECB/PKCS1Padding"

    const/4 v2, 0x1

    const/16 v3, 0xf5

    if-gt v0, v3, :cond_0

    .line 152
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->encryptRSA2Base64([B[BZLjava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 154
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    new-array v5, v3, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v0, :cond_5

    .line 160
    aget-byte v10, p0, v7

    aput-byte v10, v5, v8

    add-int/2addr v8, v2

    if-eq v8, v3, :cond_1

    add-int/lit8 v10, v0, -0x1

    if-ne v7, v10, :cond_4

    :cond_1
    add-int/lit8 v9, v9, 0x1

    if-eq v9, v2, :cond_2

    .line 164
    const-string v8, "#PART#"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-static {v5, p1, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->encryptRSA2Base64([B[BZLjava/lang/String;)[B

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V

    .line 167
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, -0x1

    if-ne v7, v5, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    sub-int v5, v0, v7

    sub-int/2addr v5, v2

    .line 172
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v5, v5, [B

    :goto_1
    const/4 v8, 0x0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 176
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decryptRSA([B[BZLjava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 257
    invoke-static {p0, p1, p2, p3, v0}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->rsaTemplate([B[BZLjava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptAES([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 339
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 340
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v3, "AES"

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 341
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x1

    .line 342
    invoke-virtual {v0, p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 343
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptByPublicKeyAndBase64Encode([B[B)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    array-length v0, p0

    .line 122
    const-string v1, "RSA/ECB/PKCS1Padding"

    const/4 v2, 0x1

    const/16 v3, 0xf5

    if-gt v0, v3, :cond_0

    .line 123
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->encryptRSA2Base64([B[BZLjava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 125
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    new-array v5, v3, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v0, :cond_5

    .line 130
    aget-byte v10, p0, v7

    aput-byte v10, v5, v8

    add-int/2addr v8, v2

    if-eq v8, v3, :cond_1

    add-int/lit8 v10, v0, -0x1

    if-ne v7, v10, :cond_4

    :cond_1
    add-int/lit8 v9, v9, 0x1

    if-eq v9, v2, :cond_2

    .line 134
    const-string v8, "#PART#"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-static {v5, p1, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->encryptRSA2Base64([B[BZLjava/lang/String;)[B

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V

    .line 137
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, -0x1

    if-ne v7, v5, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    sub-int v5, v0, v7

    sub-int/2addr v5, v2

    .line 142
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v5, v5, [B

    :goto_1
    const/4 v8, 0x0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 146
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptByPublicKeyForSpilt([B[B)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    array-length v0, p0

    .line 184
    const-string v1, "RSA/ECB/PKCS1Padding"

    const/4 v2, 0x1

    const/16 v3, 0xf5

    if-gt v0, v3, :cond_0

    .line 185
    invoke-static {p0, p1, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->encryptRSA2Base64([B[BZLjava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 187
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x800

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    new-array v5, v3, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v0, :cond_6

    .line 192
    aget-byte v10, p0, v7

    aput-byte v10, v5, v8

    add-int/2addr v8, v2

    if-eq v8, v3, :cond_1

    add-int/lit8 v10, v0, -0x1

    if-ne v7, v10, :cond_5

    :cond_1
    add-int/lit8 v9, v9, 0x1

    if-eq v9, v2, :cond_2

    .line 196
    const-string v8, "#PART#"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v10, v8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_2

    aget-byte v12, v8, v11

    .line 197
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 200
    :cond_2
    invoke-static {v5, p1, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->encryptRSA2Base64([B[BZLjava/lang/String;)[B

    move-result-object v5

    .line 201
    array-length v8, v5

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_3

    aget-byte v11, v5, v10

    .line 202
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v0, -0x1

    if-ne v7, v5, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    sub-int v5, v0, v7

    sub-int/2addr v5, v2

    .line 208
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v5, v5, [B

    :goto_3
    const/4 v8, 0x0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 212
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [B

    .line 215
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    add-int/lit8 v1, v6, 0x1

    .line 216
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p0, v6

    move v6, v1

    goto :goto_4

    :cond_7
    return-object p0
.end method

.method public static encryptByPublicKeyStr(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 102
    const-string v1, "RSA/ECB/PKCS1Padding"

    const/4 v2, 0x1

    const/16 v3, 0xf5

    if-gt v0, v3, :cond_0

    .line 103
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->encryptRSA2Base64([B[BZLjava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-static {p0, v3}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->splitStringByLength(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 108
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_2

    add-int/2addr v4, v2

    if-eq v4, v2, :cond_1

    .line 111
    const-string v5, "#PART#"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    new-instance v5, Ljava/lang/String;

    aget-object v6, p0, v3

    .line 114
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, p1, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->encryptRSA2Base64([B[BZLjava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 115
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptRSA([B[BZLjava/lang/String;)[B
    .locals 1

    const/4 v0, 0x1

    .line 238
    invoke-static {p0, p1, p2, p3, v0}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->rsaTemplate([B[BZLjava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptRSA2Base64([B[BZLjava/lang/String;)[B
    .locals 0

    .line 233
    invoke-static {p0, p1, p2, p3}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->encryptRSA([B[BZLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->base64Encode([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static fillMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->fillMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 46
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 48
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {p0}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->fillMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static joins([B[B)[B
    .locals 3

    .line 331
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 332
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static rsaTemplate([B[BZLjava/lang/String;Z)[B
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 275
    array-length v1, p0

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 280
    :cond_0
    const-string v1, "RSA"

    if-eqz p2, :cond_1

    .line 281
    :try_start_0
    new-instance p2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p2, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 282
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_0

    .line 284
    :cond_1
    new-instance p2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 285
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 290
    :cond_2
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    if-eqz p4, :cond_3

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x2

    .line 291
    :goto_1
    invoke-virtual {p2, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 292
    array-length p1, p0

    if-eqz p4, :cond_4

    const/16 p3, 0x75

    goto :goto_2

    :cond_4
    const/16 p3, 0x80

    .line 294
    :goto_2
    div-int p4, p1, p3

    if-lez p4, :cond_7

    const/4 v1, 0x0

    .line 296
    new-array v2, v1, [B

    .line 297
    new-array v3, p3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v4, p4, :cond_5

    .line 300
    invoke-static {p0, v5, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    invoke-virtual {p2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    invoke-static {v2, v6}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->joins([B[B)[B

    move-result-object v2

    add-int/2addr v5, p3

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    if-eq v5, p1, :cond_6

    sub-int/2addr p1, v5

    .line 306
    new-array p3, p1, [B

    .line 307
    invoke-static {p0, v5, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    invoke-virtual {p2, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ihoc/tgpatask/transceivertool/util/EncryptUtil;->joins([B[B)[B

    move-result-object v2

    :cond_6
    return-object v2

    .line 312
    :cond_7
    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 325
    invoke-virtual {p0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p0

    .line 323
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception p0

    .line 321
    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception p0

    .line 317
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception p0

    .line 315
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_8
    :goto_4
    return-object v0
.end method

.method public static splitStringByLength(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 74
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    if-gtz p1, :cond_1

    .line 80
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo p1, "the length < 0"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    .line 85
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    .line 87
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_2

    mul-int v3, v2, p1

    add-int/lit8 v4, v2, 0x1

    mul-int v4, v4, p1

    .line 91
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1

    :cond_2
    mul-int v3, v2, p1

    .line 93
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    .line 75
    :cond_4
    :goto_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo p1, "the string is null"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0
.end method
