.class public Lcom/centauri/comm/log/processor/CTILogEncryptor;
.super Ljava/lang/Object;
.source "CTILogEncryptor.java"


# static fields
.field private static ENCRYPT_KEY:Ljava/lang/String; = "}VjZtoJF;dE+7iJs"

.field private static final MAGIC_END:B = 0x0t

.field private static final MAGIC_START:B = 0x2t

.field private static PROTOCOL_VERSION:B = 0x1t

.field private static header:[B


# instance fields
.field private encryptCipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 24
    new-array v0, v0, [B

    sput-object v0, Lcom/centauri/comm/log/processor/CTILogEncryptor;->header:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/centauri/comm/log/processor/CTILogEncryptor;->encryptCipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method private static assembleHeader(I)[B
    .locals 4

    .line 98
    invoke-static {p0}, Lcom/centauri/comm/log/util/CTIBytesUtil;->int2bytes(I)[B

    move-result-object p0

    .line 99
    sget-object v0, Lcom/centauri/comm/log/processor/CTILogEncryptor;->header:[B

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    sget-object p0, Lcom/centauri/comm/log/processor/CTILogEncryptor;->header:[B

    return-object p0
.end method

.method public static create()Lcom/centauri/comm/log/processor/CTILogEncryptor;
    .locals 1

    .line 31
    new-instance v0, Lcom/centauri/comm/log/processor/CTILogEncryptor;

    invoke-direct {v0}, Lcom/centauri/comm/log/processor/CTILogEncryptor;-><init>()V

    .line 32
    invoke-direct {v0}, Lcom/centauri/comm/log/processor/CTILogEncryptor;->init()V

    return-object v0
.end method

.method private init()V
    .locals 4

    .line 38
    :try_start_0
    sget-object v0, Lcom/centauri/comm/log/processor/CTILogEncryptor;->header:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 39
    sget-byte v1, Lcom/centauri/comm/log/processor/CTILogEncryptor;->PROTOCOL_VERSION:B

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 41
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/centauri/comm/log/processor/CTILogEncryptor;->ENCRYPT_KEY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v3, "AES"

    invoke-direct {v0, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 42
    const-string v1, "AES/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/comm/log/processor/CTILogEncryptor;->encryptCipher:Ljavax/crypto/Cipher;

    .line 43
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setEncryptKey(Ljava/lang/String;)V
    .locals 0

    .line 89
    sput-object p0, Lcom/centauri/comm/log/processor/CTILogEncryptor;->ENCRYPT_KEY:Ljava/lang/String;

    return-void
.end method

.method public static setProtocolVersion(B)V
    .locals 0

    .line 93
    sput-byte p0, Lcom/centauri/comm/log/processor/CTILogEncryptor;->PROTOCOL_VERSION:B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/centauri/comm/log/processor/CTILogEncryptor;->encryptCipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method public encrypt([B)[B
    .locals 5

    .line 54
    array-length v0, p1

    .line 55
    rem-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v0

    .line 59
    :try_start_0
    new-array v1, v1, [B

    .line 60
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/centauri/comm/log/processor/CTILogEncryptor;->encryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 65
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .line 70
    :goto_0
    invoke-static {v0}, Lcom/centauri/comm/log/processor/CTILogEncryptor;->assembleHeader(I)[B

    move-result-object v0

    .line 73
    array-length v1, v0

    array-length v3, p1

    add-int/2addr v1, v3

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [B

    .line 75
    array-length v4, v0

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    array-length v0, v0

    array-length v4, p1

    invoke-static {p1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    aput-byte v2, v3, v1

    return-object v3
.end method
