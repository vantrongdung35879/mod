.class public Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;
.super Ljava/lang/Object;
.source "MSDKCryptUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$OnUpdateEncryptionListener;,
        Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;
    }
.end annotation


# static fields
.field private static final AES_BLOCK_MODES:Ljava/lang/String; = "CBC"

.field private static final AES_ENCRYPTION_PADDINGS:Ljava/lang/String; = "PKCS7Padding"

.field private static final AES_MODE:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final AES_UUID:Ljava/lang/String; = "AES_UUID"

.field private static final ALGORITHM_AES:Ljava/lang/String; = "AES"

.field private static final ALGORITHM_RSA:Ljava/lang/String; = "RSA"

.field private static final AndroidKeyStore:Ljava/lang/String; = "AndroidKeyStore"

.field private static final KEY_ALIAS_AES:Ljava/lang/String; = "MSDKPopupAESKey"

.field private static final KEY_ALIAS_RSA:Ljava/lang/String; = "MSDKPopupRSAKey"

.field private static final POPUP_SP:Ljava/lang/String; = "POPUP_SP"

.field private static final RSA_BLOCK_MODES:Ljava/lang/String; = "ECB"

.field private static final RSA_ENCRYPTION_PADDINGS:Ljava/lang/String; = "PKCS1Padding"

.field private static final RSA_MODE:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final ivLen:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string p0, ""

    return-object p0

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->decrypt(Landroid/content/Context;[BLcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$OnUpdateEncryptionListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decrypt(Landroid/content/Context;Ljava/lang/String;Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$OnUpdateEncryptionListener;)Ljava/lang/String;
    .locals 1

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string p0, ""

    return-object p0

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->decrypt(Landroid/content/Context;[BLcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$OnUpdateEncryptionListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decrypt(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-static {p0, p1, v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->decrypt(Landroid/content/Context;[BLcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$OnUpdateEncryptionListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decrypt(Landroid/content/Context;[BLcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$OnUpdateEncryptionListener;)Ljava/lang/String;
    .locals 9

    .line 144
    const-string v0, ""

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    array-length v1, p1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto/16 :goto_2

    .line 150
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :try_start_1
    sget-object v4, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$1;->$SwitchMap$com$itop$gcloud$msdk$popup$utils$MSDKCryptUtils$KeyEntry$Type:[I

    invoke-static {v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->valueOf(I)Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x2

    if-eq v4, v2, :cond_3

    if-eq v4, v5, :cond_2

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    return-object v0

    .line 163
    :cond_1
    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->getSimpleKey(Landroid/content/Context;)Ljava/security/Key;

    move-result-object p0

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->getKeyByRSA(Landroid/content/Context;)Ljava/security/Key;

    move-result-object p0

    goto :goto_0

    .line 157
    :cond_3
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->getKeyFromKeyStore()Ljava/security/Key;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_4

    return-object v0

    .line 171
    :cond_4
    const-string v4, "AES/CBC/PKCS7Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 172
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->getIvDataBase64Len()I

    move-result v6

    .line 173
    invoke-static {p1, v2, v6, v3}, Landroid/util/Base64;->decode([BIII)[B

    move-result-object v7

    .line 174
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v4, v5, p0, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    add-int/lit8 p0, v6, 0x1

    .line 175
    array-length v5, p1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v6

    invoke-static {p1, p0, v5, v3}, Landroid/util/Base64;->decode([BIII)[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    if-eqz p2, :cond_6

    .line 177
    sget-object p1, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->KEYSTORE_AES:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    iget p1, p1, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->id:I

    if-le v1, p1, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p1, v2, :cond_5

    .line 179
    invoke-interface {p2, p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$OnUpdateEncryptionListener;->onUpdate([B)V

    goto :goto_1

    .line 180
    :cond_5
    sget-object p1, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->KEYSTORE_RSA:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    iget p1, p1, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->id:I

    if-le v1, p1, :cond_6

    .line 182
    invoke-interface {p2, p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$OnUpdateEncryptionListener;->onUpdate([B)V

    .line 185
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :catch_1
    :cond_7
    :goto_2
    return-object v0
.end method

.method private static decryptByRSA(Ljava/lang/String;Ljava/security/KeyPair;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 328
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 331
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 332
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 334
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    .line 329
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "content is empty or keyPair is null!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string p0, ""

    return-object p0

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->encrypt(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encrypt(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 6

    .line 105
    const-string v0, ""

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 110
    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->getKey(Landroid/content/Context;)Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;

    move-result-object p0

    .line 111
    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;->key:Ljava/security/Key;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;->type:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    sget-object v3, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->UNKNOWN:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->getRandomIVData()[B

    move-result-object v0

    const/4 v2, 0x0

    .line 115
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;->key:Ljava/security/Key;

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 117
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;->type:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    iget p0, p0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static encryptByRSA(Ljava/lang/String;Ljava/security/KeyPair;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 321
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 322
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 324
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 319
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "content is empty or keyPair is null!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getIvDataBase64Len()I
    .locals 2

    const-wide v0, 0x4015555555555555L    # 5.333333333333333

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    .line 196
    div-int/lit8 v1, v0, 0x4c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static getKey(Landroid/content/Context;)Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;
    .locals 3

    .line 206
    new-instance v0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;-><init>(Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$1;)V

    .line 208
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 209
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->getKeyFromKeyStore()Ljava/security/Key;

    move-result-object v1

    .line 210
    sget-object v2, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->KEYSTORE_AES:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    iput-object v2, v0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;->type:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->getKeyByRSA(Landroid/content/Context;)Ljava/security/Key;

    move-result-object v1

    .line 213
    sget-object v2, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->KEYSTORE_RSA:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    iput-object v2, v0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;->type:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    :goto_0
    if-nez v1, :cond_1

    .line 216
    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->getSimpleKey(Landroid/content/Context;)Ljava/security/Key;

    move-result-object v1

    .line 217
    sget-object p0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->SIMPLE:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    iput-object p0, v0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;->type:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    .line 219
    :cond_1
    iput-object v1, v0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;->key:Ljava/security/Key;

    return-object v0
.end method

.method private static getKeyByRSA(Landroid/content/Context;)Ljava/security/Key;
    .locals 7

    .line 255
    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->getKeyPairFromKeyStore(Landroid/content/Context;)Ljava/security/KeyPair;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 257
    const-string v2, "POPUP_SP"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 260
    const-string v2, "AES_UUID"

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_0

    .line 261
    invoke-interface {p0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 263
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 264
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 266
    :try_start_0
    invoke-static {v3, v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->encryptByRSA(Ljava/lang/String;Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 269
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    return-object v1

    .line 274
    :cond_1
    :try_start_1
    invoke-static {v4, v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->decryptByRSA(Ljava/lang/String;Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 281
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "AES"

    invoke-direct {p0, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0

    :catch_1
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method private static getKeyFromKeyStore()Ljava/security/Key;
    .locals 5

    .line 225
    const-string v0, "AndroidKeyStore"

    const-string v1, "MSDKPopupAESKey"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    .line 227
    :try_start_0
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {v2, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 230
    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v2, v1, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0

    .line 233
    :cond_0
    const-string v2, "AES"

    invoke-static {v2, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 234
    invoke-static {}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m()V

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "CBC"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {v1, v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/security/keystore/KeyGenParameterSpec$Builder;[Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "PKCS7Padding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {v1, v2}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/security/keystore/KeyGenParameterSpec$Builder;[Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 240
    invoke-static {v1, v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/security/keystore/KeyGenParameterSpec$Builder;Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 242
    invoke-static {v1, v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/security/keystore/KeyGenParameterSpec$Builder;Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 243
    invoke-static {v1}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 244
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :cond_1
    return-object v4
.end method

.method private static getKeyPairFromKeyStore(Landroid/content/Context;)Ljava/security/KeyPair;
    .locals 7

    .line 338
    const-string v0, "AndroidKeyStore"

    const-string v1, "MSDKPopupRSAKey"

    const/4 v2, 0x0

    .line 340
    :try_start_0
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 341
    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 342
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    invoke-virtual {v3, v1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    .line 344
    instance-of v0, p0, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 346
    new-instance v1, Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast p0, Ljava/security/PrivateKey;

    invoke-direct {v1, v0, p0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    .line 349
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 350
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0xa

    .line 351
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 353
    new-instance v5, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v5, p0}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    invoke-virtual {v5, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    const-string v5, "CN=MSDKPopupRSAKey"

    invoke-direct {v1, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    const-wide/16 v5, 0x539

    .line 356
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    .line 357
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    .line 358
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    .line 359
    invoke-virtual {p0}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object p0

    .line 361
    const-string v1, "RSA"

    invoke-static {v1, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 362
    invoke-virtual {v0, p0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 363
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 366
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method private static getRandomIVData()[B
    .locals 2

    const/16 v0, 0x10

    .line 200
    new-array v0, v0, [B

    .line 201
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private static getSimpleKey(Landroid/content/Context;)Ljava/security/Key;
    .locals 3

    .line 290
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, ".MSDKPopupConfig/.MSDKPopupConfig"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 293
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 301
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v1, p0}, Lcom/itop/gcloud/msdk/popup/utils/FileUtils;->write(Ljava/lang/String;[B)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 305
    :cond_2
    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 307
    :cond_3
    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/FileUtils;->read(Ljava/io/File;)[B

    move-result-object p0

    .line 308
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;->simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 309
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 381
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 382
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 383
    aget-byte v1, p0, v0

    not-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 373
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 374
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 375
    aget-byte v2, p0, v1

    not-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    :cond_0
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
